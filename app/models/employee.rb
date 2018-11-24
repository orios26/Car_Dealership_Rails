class Employee < ApplicationRecord
  has_many :quotes
  #scope :ismanager, -> (id) {where(employee_id:).not(id)}
  belongs_to :employee_type
  has_many :subordinates, :class_name => "Employee",
  :foreign_key => "manager_id"
  belongs_to :manager, :optional => true, :class_name => "Employee"

  def full_name
    "#{last_name}, #{first_name}"
  end

  def self.search_by(search_term)
    where("LOWER(last_name) LIKE :search_term OR LOWER(first_name) LIKE :search_term",
          search_term: "%#{search_term.downcase}%")
  end

end
