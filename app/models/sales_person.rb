class SalesPerson < ApplicationRecord
  belongs_to :manager
  has_many :quotes

  #validations for sales person
  validates :first_name, presence: true
  validates :last_name, presence: true

  #full name method for sales people
  def full_name
    "#{last_name}, #{first_name}"
  end
end
