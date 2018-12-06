class User < ApplicationRecord
  has_many :requests, foreign_key: "owner_id"
  has_many :requests, foreign_key: "sitter_id"

  has_many :owners, :through => :requests, :source => 'owner'
  has_many :sitters, :through => :requests, :source => 'sitter'

  has_many :user_plants
  has_many :plants, through: :user_plants

  validates :username, length: { in: 2..20}, uniqueness: true
  validates :name, length: { in: 2..20}
  validates :zip, length: { is: 5}, numericality: true
  validates :phone, length: { is: 10}, uniqueness: true, numericality: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /@/
  validates :bio, presence: true

  has_secure_password
end
