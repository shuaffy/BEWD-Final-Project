# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Painting.create title: "Mona Lisa", description: "Smirking lady", artist_id: "1", museum_id: "1"
Painting.create title: "Water Lilies", description: "Water lilies floating in a pond", artist_id: "2", museum_id: "1"
Painting.create title: "Starry Night", description: "French countryside at night", artist_id: "3", museum_id: "1"
Painting.create title: "Madame X", description: "19th century harlot/socialite", artist_id: "4", museum_id: "1"

Museum.create name: "Louvre", city: "Paris", state: "France"
Museum.create name: "Museum of Modern Art", city: "New York", state: "NY"
Museum.create name: "Metropolitan Museum of Fine Arts", city: "New York", state: "NY"

Artist.create name: "Leonardo DaVinci"
Artist.create name: "Claude Monet"
Artist.create name: "Vincent Van Gogh"
Artist.create name: "John Singer Sargent"