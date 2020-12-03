# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: ''Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# def starwars
#   i = 1
#   82.times do
#     response = HTTParty.get("http://swapi.dev/api/people/#{i}")
#     i += 1
#     puts subresponse["name"]
#     puts "Star Wars 'Characters'"
#     createdtopic= Topic.create!(:subtopic => subtopic, :name => topic)
#   end

#   36.times do
#     response = HTTParty.get("http://swapi.dev/api/starships/#{i}")
#     i += 1
#     puts subresponse["name"]
#     puts "Star Wars Starships"
#   end

#   60.times do
#     response = HTTParty.get("http://swapi.dev/api/vehicles/#{i}")
#     i += 1
#     puts subresponse["name"]
#     puts "Star Wars Starships"
#   end

#   60.times do
#     response = HTTParty.get("http://swapi.dev/api/planets/#{i}")
#     i += 1
#     puts subresponse["planets"]
#     puts "Star Wars Plamets"
#   end

#   60.times do
#     response = HTTParty.get("http://swapi.dev/api/planets/#{i}")
#     i += 1
#     puts subresponse["planets"]
#     puts "Star Wars Plamets"
#   end
# end

Topic.create!({ name: 'Star Wars' })
Topic.create!({ name: 'Star Trek' })
Topic.create!({ name: 'Game of Thrones' })
Topic.create!({ name: 'Harry Potter' })
Topic.create!({ name: 'Lord of The Rings' })
Topic.create!({ name: 'NASA' })
Topic.create!({ name: 'Cats' })

#  Topic.create!({:subtopic => 'Characters', :name => 'Harry Potter'})
#  Topic.create!({:subtopic => 'Houses', :name => 'Harry Potter'})
#  Topic.create!({:subtopic => 'Spells', :name => 'Harry Potter'})
#  Topic.create!({:subtopic => 'Book', :name => 'Lord of the Rings'})
#  Topic.create!({:subtopic => 'Movie', :name => 'Lord of the Rings'})
#  Topic.create!({:subtopic => 'Character', :name => 'Lord of the Rings'})
#  Topic.create!({:subtopic => 'Quote', :name => 'Lord of the Rings'})
#  Topic.create!({:subtopic => 'Astronauts', :name => 'NASA'})
#  Topic.create!({:subtopic => 'Spacecraft', :name => 'NASA'})
#  Topic.create!({:subtopic => 'Breeds', :name => 'Cat Facts'})
#  Topic.create!({:subtopic => 'Seasons', :name => 'Star Trek'})
#  Topic.create!({:subtopic => 'Spacecraft', :name => 'Star Trek'})
#  Topic.create!({:subtopic => 'Technology', :name => 'Star Trek'})
#  Topic.create!({:subtopic => 'Location', :name => 'Star Trek'})
#  Topic.create!({:subtopic =>'Characters', :name => 'Star Trek'})
#  Topic.create!({:subtopic => 'Random Cat Facts', :name => 'Cat Facts'})
