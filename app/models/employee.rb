class Employee < ApplicationRecord
  #set the manager_id to have a recursive relationship with employee table
  #ie managers are employees
  has_many :quotes
  belongs_to :employee_type
  has_many :subordinates, :class_name => "Employee",
  :foreign_key => "manager_id"
  belongs_to :manager, :optional => true, :class_name => "Employee"


  validates :first_name, presence: true
  validates :last_name, presence: true 


  #Scopes used for collection selects
  scope :is_manager, -> {joins(:employee_type).where.not('employee_types.name' => 'Sales Person')}
  scope :is_sales_manager, -> {joins(:employee_type).where('employee_types.name' => 'Sales Manager')}
  scope :is_sales_person, -> {joins(:employee_type).where('employee_types.name' => 'Sales Person')}



  def full_name
    "#{last_name}, #{first_name}"
  end

  def self.search_by(search_term)
    where("LOWER(last_name) LIKE :search_term OR LOWER(first_name) LIKE :search_term",
          search_term: "%#{search_term.downcase}%")
  end

end
