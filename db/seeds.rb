# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def starwars
  i = 1
  82.times do 
    response = HTTParty.get("http://swapi.dev/api/people/#{i}")
    i += 1
    puts subtopic = response["name"]
    puts topic = "Star Wars Characters"
    createdtopic= Topic.new(:subtopic => subtopic, :topic => topic)
  end

  36.times do
    response = HTTParty.get("http://swapi.dev/api/starships/#{i}")
    i += 1   
    puts subtopic = response["name"]
    puts topic = "Star Wars Starships"
  end

  60.times do
    response = HTTParty.get("http://swapi.dev/api/vehicles/#{i}")
    i += 1   
    puts subtopic = response["name"]
    puts topic = "Star Wars Starships"
  end

  60.times do
    response = HTTParty.get("http://swapi.dev/api/planets/#{i}")
    i += 1   
    puts subtopic = response["planets"]
    puts topic = "Star Wars Plamets"
  end

  60.times do
    response = HTTParty.get("http://swapi.dev/api/planets/#{i}")
    i += 1   
    puts subtopic = response["planets"]
    puts topic = "Star Wars Plamets"
  end
end

  def others
      1.times do
       Topic.new(:subtopic => characters, :topic => Game of Thrones)
       Topic.new(:subtopic => books, :topic => Game of Thrones)
       Topic.new(:subtopic => houses, :topic => Game of Thrones)
       Topic.new(:subtopic => Characters, :topic => Harry Potter)
       Topic.new(:subtopic => Houses, :topic => Harry Potter)
       Topic.new(:subtopic => Spells, :topic => Harry Potter)
       Topic.new(:subtopic => Book, :topic => Lord of the Rings)
       Topic.new(:subtopic => Movie, :topic => Lord of the Rings)
       Topic.new(:subtopic => Character, :topic => Lord of the Rings)
       Topic.new(:subtopic => Quote, :topic => Lord of the Rings)
       Topic.new(:subtopic => Astronauts, :topic => NASA)
       Topic.new(:subtopic => Spacecraft, :topic => NASA)
       Topic.new(:subtopic => Breeds, :topic => Cat Facts)
       Topic.new(:subtopic => Seasons :topic => Star Trek)
       Topic.new(:subtopic => Spacecraft, :topic => Star Trek)
       Topic.new(:subtopic => Technology, :topic => Star Trek)
       Topic.new(:subtopic => Location, :topic => Star Trek)
       Topic.new(:subtopic => Characters, :topic => Star Trek)

       Topic.new(:subtopic => RAndom Cat Facts, :topic => Star Trek)




      end
    end

end

1.times do
  starwars()
  others()
end