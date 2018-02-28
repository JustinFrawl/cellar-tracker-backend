class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :abv, :style, :brewery
  has_many :users, through: :cellars
end
