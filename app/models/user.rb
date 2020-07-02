class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :password_digest, presence: true
  validates :email, presence: true
  validates :user_type, presence: true

  belongs_to :user_type
  has_many :stocks
end
