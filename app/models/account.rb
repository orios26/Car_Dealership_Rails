class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  #used to define roles in account
  ROLES = %i[admin finance inventory salesm salesp]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
