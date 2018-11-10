class SalesPerson < ApplicationRecord
  belongs_to :manager
  has_many :quotes
end
