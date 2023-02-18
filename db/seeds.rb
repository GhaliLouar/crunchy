
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
  description: "description du burger",
)
file2 = URI.open("il faut que je mets une photo")
menu2.image.attach(io: file2, filename: 'menu2.jpg', content_type: 'image/jpg')

menu3 = Menu.new(
  name: "Le XXL Crunchy BBQ",
  description: "description du burger.",
)
file3 = URI.open("il faut que je mets une photo")
menu3.image.attach(io: file3, filename: 'menu3.jpg', content_type: 'image/jpg')

menu4 = Menu.new(
  name: "Le père et fish",
  description: " description du burger.",
)
file4 = URI.open("il faut que je mets une photo")
menu4.image.attach(io: file4, filename: 'menu4.jpg', content_type: 'image/jpg')

menu5 = Menu.new(
  name: "Le Fondu",
  description: "description du burger",
)
file5 = URI.open("il faut que je mets une photo")
menu5.image.attach(io: file5, filename: 'menu5.jpg', content_type: 'image/jpg')

menu6 = Menu.new(
  name: "L'interminable",
  description: "description du burger",
)
file6 = URI.open("il faut que je mets une photo")
menu6.image.attach(io: file6, filename: 'menu6.jpg', content_type: 'image/jpg')

menus = [menu1, menu2, menu3, menu4, menu5, menu6]

menus.each do |menu|
  burger.user = users.sample
  burger.save!
end
