class Vehicle < ApplicationRecord
  has_many :quotes
  has_one_attached :vehicle_image

  scope :no_quote, -> {includes(:quotes).where(quotes: {id: nil})}
  scope :quote_not_sold, -> {includes(:quotes).where(quotes: {sold: false})}
  scope :available, -> {quote_not_sold.or(Vehicle.no_quote)}


  #validations
  validates :vin, presence: true, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :year, numericality: { greater_than_or_equal_to: 1}
  validates :model, presence: true
  validates :color, presence: true
  validates :make, presence: true


  #method to return vehicle details in collection select
  def vehicle_details
    "#{year} #{make} #{model}"
  end

  private
  #method to ensure vehicles with quotes cannot be deleted
  def ensure_not_referenced_by_quotes
    unless quotes.empty?
      errors.add(:base, 'Quotes for this vehicle')
      throw :abort
    end
  end

  def self.search_by(search_term)
    where("LOWER(vin) LIKE :search_term OR LOWER(make) LIKE :search_term
    OR LOWER(model) LIKE :search_term OR LOWER(color) LIKE :search_term OR
    LOWER(car_type) LIKE :search_term ", search_term: "%#{search_term.downcase}%")
  end

end
