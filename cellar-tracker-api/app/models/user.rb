require 'bcrypt'

class User < ApplicationRecord
  has_many :cellars
  has_many :beers, through: :cellars
  has_secure_password
end
