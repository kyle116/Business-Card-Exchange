class User < ApplicationRecord
  has_secure_password

  has_many :business_cards
  has_many :contacts, through: :business_cards
end
