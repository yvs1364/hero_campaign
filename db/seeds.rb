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
Breed.destroy_all
User.destroy_all

dwarf = Breed.create!(        
    nameofbreed: "Dwarf", 
    category:   ["Druid"]
)
puts dwarf
names = ["Dwarf", "Orc", "Gnome", "Elf"]
breeds = names.each do |name|
    Breed.create!(
        nameofbreed: name, 
        category:   ["Druid", "War", "Rogue", "Mage"]
    )
end
puts breeds

juicys = User.create!(pseudo: "juicys",  email: 'yvan@mail.fr', password: 'password', level: 1, breed: dwarf)
puts juicys