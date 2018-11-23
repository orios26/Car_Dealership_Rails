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

  def self.search_by(search_term)
    where("LOWER(last_name) LIKE :search_term OR LOWER(first_name) LIKE :search_term
    OR LOWER(address) LIKE :search_term OR LOWER(email) LIKE :search_term OR
    LOWER(phone) LIKE :search_term ", search_term: "%#{search_term.downcase}%")
  end

end
