class User < ActiveRecord::Base
  has_secure_password
  has_many :events
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :location, presence:true
  validates :password, presence:true, length: {minimum: 8}, on: :create
  validates :email, presence:true, uniqueness: {case_sensitive: false}, format:{with:EMAIL_REGEX}
end
