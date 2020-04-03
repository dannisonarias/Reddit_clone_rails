class User < ApplicationRecord
  has_many :comments
  has_many :posts
  validates :username, presence: true
  validates :password, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  has_secure_password
end
