class Post < ApplicationRecord
  validates :title, length: { maximum: 300 }, uniqueness: true, presence: true
  validates :link, presence: true

  belongs_to :user
  has_many :comments
end
