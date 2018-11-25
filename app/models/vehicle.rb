class Vehicle < ApplicationRecord
  belongs_to :color
  belongs_to :type
  belongs_to :model
  has_many :quotes
  has_one_attached :vehicle_image

  scope :v_color, -> (color) {eager_load(:color).where("colors.name LIKE ?", "#{color}%")}
  scope :no_quote, -> {includes(:quotes).where(quotes: {id: nil})}
  scope :quote_not_sold, -> {joins(:quotes).where(quotes: {sold: false})}


  #validations
  validates :vin, presence: true, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :year, numericality: { greater_than_or_equal_to: 1}


  #method to return vehicle details in collection select
  def vehicle_details
    "#{model.name}-#{vin}"
  end

  private
  #method to ensure vehicles with quotes cannot be deleted
  def ensure_not_referenced_by_quptes
    unless quotes.empty?
      errors.add(:base, 'Quotes for this vehicle')
      throw :abort
    end
  end

  def self.search_by(search_term)
    where("LOWER(vin) LIKE :search_term",
          search_term: "%#{search_term.downcase}%")
  end

end
