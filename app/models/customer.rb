class Customer < ApplicationRecord
  has_many :quotes

  #validations for customer
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :phone, format: {with: /\d{3}-\d{3}-\d{4}/, message: "Number Invalid"}

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
