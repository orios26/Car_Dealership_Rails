class Manager < ApplicationRecord
  belongs_to :manager_type
  has_many :sales_people

  #validations for manager
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    "#{last_name}, #{first_name}"
  end
end
