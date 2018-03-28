# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create( id: 1, name: 'Justin Frawley', username: 'frawlcity', password: 'kenneth')
Beer.create( id: 1, name: '3Frawls', description: 'Inspired by 3 Floyds when I went out there and visited.  Such a balanced malt forward IPA with English accents.', abv: 7, style: 'India Pale Ale', brewery: 'Captain Lawrence' )
Cellar.create( userId: 1, beerId: 1, rating: 5 )
