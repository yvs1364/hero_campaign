# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Adventure.destroy_all
juicys = User.create!(pseudo: "juicys",  email: 'yvan@mail.fr', password: 'password', level: 1, breed: "Dwarf", category: "Druid")
puts "#{juicys} was create"
legendary = Adventure.create!(name: "Legendary Adventure", user_id: juicys.id)
puts legendary
