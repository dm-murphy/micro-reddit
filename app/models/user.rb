class User < ApplicationRecord
  validates :username, length: { in: 3..20 }, uniqueness: true, presence: true 
  validates :email, uniqueness: true, presence: true

  has_many :posts
  has_many :comments
end
