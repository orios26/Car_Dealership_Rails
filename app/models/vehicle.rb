class Vehicle < ApplicationRecord
  belongs_to :color
  belongs_to :type
  belongs_to :model
  has_many :quotes
end
