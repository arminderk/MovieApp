# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

Movie.create!([{
  name: "Wonder Woman",
  rated: "PG-13",  
  year: "2017",
  director: "Patty Jenkins", 
  genre: "Action",
  description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior."
},
{
  name: "Spider-Man: Homecoming",
  rated: "PG-13",  
  year: "2017",
  director: "Jon Watts", 
  genre: "Fantasy/Science",
  description: "Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May."
},
{
  name: "Get Out",
  rated: "R",  
  year: "2017",
  director: "Jordan Peele", 
  genre: "Mystery/Thriller",
  description: "Now that Chris (Daniel Kaluuya) and his girlfriend, Rose (Allison Williams), have reached the meet-the-parents milestone of dating."  
},
{
  name: "Logan",
  rated: "R",  
  year: "2017",
  director: "James Mangold", 
  genre: "Action",
  description: "In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border."
},
{
  name: "Dunkirk",
  rated: "PG-13",  
  year: "2017",
  director: "Christopher Nolan", 
  genre: "Drama/Thriller",
  description: "In May 1940, Germany advanced into France, trapping Allied troops on the beaches of Dunkirk."
}])

Theatre.destroy_all

Theatre.create!([{
  name: "Pacific",
  price_cents: "12.95"
},
{
  name: "AMC",
  price_cents: "14.95"
},
{
  name: "Regency",
  price: "13.95"
}])