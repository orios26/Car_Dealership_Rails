class Customer < ApplicationRecord
  has_many :quotes

  #validations for customer
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  #method to return customer full name
  def full_name
    "#{last_name}, #{first_name}"
  end
end
