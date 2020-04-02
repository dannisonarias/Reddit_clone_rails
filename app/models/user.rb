class User < ApplicationRecord
    has_many :comment
    has_many :posts
    validates :username,:password, presence: true
    validates :username,uniqueness: { case_sensitive: false }
    has_secure_password
end
