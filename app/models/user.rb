class User < ApplicationRecord
  has_many :requests, foreign_key: "owner_id"
  has_many :requests, foreign_key: "sitter_id"

  has_many :owners, :through => :requests, :source => 'owner'
  has_many :sitters, :through => :requests, :source => 'sitter'

  has_many :user_plants
  has_many :plants, through: :user_plants

  has_secure_password
end
