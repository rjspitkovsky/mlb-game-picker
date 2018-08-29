class User < ApplicationRecord
  has_secure_password
  validates :password, length: {minimum: 6}
  validates :email, uniqueness: true
  validates :username, presence: true


  def logged_in_through_facebook
  !!self.uid
  end

  def self.find_or_create_by_omniauth(auth_hash)
    oauth_email = auth_hash['info']['email']
    where(:email => oauth_email).first_or_create do |user|
      user.password = SecureRandom.hex
      user.username = auth_hash['info']['name']
      user.uid = auth_hash['uid']
    end
  end


end
