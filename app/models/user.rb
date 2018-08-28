class User < ApplicationRecord
  has_secure_password
  validates :password, length: {minimum: 6}
  validates :email, uniqueness: true
  validates :username, presence: true 

end
