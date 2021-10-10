# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all

dog_1 = Dog.create(name:"Josh", breed:"pug", age:12)
dog_2 = Dog.create(name:"Jeremey", breed:"Lab", age:2)
