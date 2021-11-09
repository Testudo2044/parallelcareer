class Provider < ApplicationRecord
  has_many :introduced_users, dependent: :destroy
  has_many :users, through: :introduced_users 
end
