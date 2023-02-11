# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require "open-uri"

Booking.destroy_all
Spaceship.destroy_all
User.destroy_all

user1 = User.new(email: "test@test.com", password: "123456", username: "ghalipj")

users = [user1]


menu1 = Menu.new(
  name: "Le rafiné",
  description: "Le burger gourmet tendre et avec une viande fumé au bois de herte.",
)
file1 = URI.open("il faut que je mets une photo")
menu1.image.attach(io: file1, filename: 'menu1.jpg', content_type: 'image/jpg')

menu2 = Menu.new(
  name: "Le Super Star",
  description: "You absolutely remember Darth Vader’s flagship, Executor, from The Empire Strikes Back and Return of
    the Jedi. The ship that hunted Luke Skywalker and the Rebellion was the same one that later crashed into the Death
    Star II’s surface during the Battle of Endor. It’s quite poetic that it’s a Rebel A-wing—one of the fleet’s smaller
    fighters—that ultimately deals the killing blow.",
)
file2 = URI.open("il faut que je mets une photo")
menu2.image.attach(io: file2, filename: 'menu2.jpg', content_type: 'image/jpg')

menu3 = Menu.new(
  name: "Jedi Starfighter",
  description: "The Aethersprite-class light interceptor, more commonly
    known as the Jedi starfighter and popularized by Anakin and Obi-Wan. With their bright colors and
    talkative astromech droids, these ships contributed to the characters of the Jedi and looked pretty cool while
    they were doing it, especially twisting around in the beautiful Battle of Coruscant at the beginning of Revenge
    of the Sith. The Aethersprites are agile.",
)
file3 = URI.open("il faut que je mets une photo")
menu3.image.attach(io: file3, filename: 'menu3.jpg', content_type: 'image/jpg')

menu4 = Menu.new(
  name: "N-1 Naboo Starfighter",
  description: " The bright yellow, needle-tipped Naboo fighters serve the same role as the X-Wings,
    as the front line fighters of the Naboo forces. They were used by the local Naboo Royal Security Forces
    but were more than capable of taking out a Trade Federation droid control ship..",
)
file4 = URI.open("il faut que je mets une photo")
menu4.image.attach(io: file4, filename: 'menu4.jpg', content_type: 'image/jpg')

menu5 = Menu.new(
  name: "X-wing",
  description: "Since the starship battles in A New Hope were modeled after real-world dogfights, X-wings fit the role
    of the quick, darting fighter planes that fought in them. Their maneuverability and the split wings that match
    the X in their name make them one of the coolest starship designs in Star Wars, utilized by the heroes of both
    the Original Trilogy and The Force Awakens. Poe Dameron’s black-and-orange T-70 is the evolution of the classic
    T-65, with the same sharp ferocity. The X-wing is the ship of heroes, and it looks the part.",
)
file5 = URI.open("il faut que je mets une photo")
menu5.image.attach(io: file5, filename: 'menu5.jpg', content_type: 'image/jpg')

menu6 = Menu.new(
  name: "USS ENTERPRISE",
  description: " The U.S.S. Enterprise not only performs, but outperforms in most situations.
    It regularly operates well beyond safe speed limits, some versions have the ability to split in two independent
    parts, and it can deal with extreme environments (like burning up in Earth's atmosphere or lurking under the ocean.)
    Most advanced versions can even cloak. ",
)
file6 = URI.open("il faut que je mets une photo")
menu6.image.attach(io: file6, filename: 'menu6.jpg', content_type: 'image/jpg')

menus = [menu1, menu2, menu3, menu4, menu5, menu6]

menus.each do |menu|
  spaceship.user = users.sample
  spaceship.save!
end
