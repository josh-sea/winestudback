# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Food.create(name:"Red Wine Spaghetti", recipe_link:"https://www.bonappetit.com/recipe/red-wine-spaghetti")
Wine.create(name:"testwine",drink_date:"11/20/2020")
WineVintage.create(wine_id:1,vintage_id:1)
Vintage.create(year:"2001")

WineFood.create(wine_id:1,food_id:1)
Type.create(name:"Cabernet Sauvignon")
WineType.create(wine_id:1,type_id:1)
