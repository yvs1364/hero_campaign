# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Breed.destroy_all

names = ["Dwarf", "Orc", "Gnome", "Elf"]

breed = names.each do |name|
    Breed.create!(
        nameofbreed: name, 
        category:   ["Druid", "War", "Rogue", "Mage"]
    )
end
puts breed