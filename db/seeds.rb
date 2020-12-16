# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'


puts "Destroying the hippie music!"
Artist.destroy_all
Song.destroy_all

puts "discovering jam bands!!!"
Artist.create(name: "Grateful Dead")
Artist.create(name: "Phish")
Artist.create(name: "Pearl Jam")
Artist.create(name: "Umphreys Mcgee")

puts "Writing Greatful Dead songs!"
20.times do
   Song.create(title: Faker::Music::GratefulDead.song, artist_id: Artist.find_by(name: "Grateful Dead").id)
end

puts "Writing Phish songs!"
15.times do
   Song.create(title: Faker::Music::Phish.song, artist_id: Artist.find_by(name: "Phish").id)
end

puts "Writing Pearl Jam songs!!"
10.times do
   Song.create(title: Faker::Music::PearlJam.song, artist_id: Artist.find_by(name: "Pearl Jam").id)
end


puts "Writing Umph songs - trippy dude!!!!"
20.times do
   Song.create(title: Faker::Music::UmphreysMcgee.song, artist_id: Artist.find_by(name: "Umphreys Mcgee").id)
end


