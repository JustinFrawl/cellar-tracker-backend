class Beer < ApplicationRecord
  has_many :cellars
  has_many :users, through: :cellars
end
