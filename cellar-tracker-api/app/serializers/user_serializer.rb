class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name, :password
  has_many :beers, through: :cellars
end
