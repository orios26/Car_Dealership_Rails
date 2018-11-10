class Manager < ApplicationRecord
  belongs_to :manager_type
  has_many :sales_people
end
