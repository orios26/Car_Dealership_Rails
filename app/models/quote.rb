class Quote < ApplicationRecord
  belongs_to :vehicle
  belongs_to :customer
  belongs_to :sales_person
end
