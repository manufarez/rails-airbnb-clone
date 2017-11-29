# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "remove bookings"
Booking.destroy_all
puts "remove sozees"
Sozee.destroy_all
puts "remove users"
User.destroy_all

puts "creating users ..."
user1 = User.create(username: "Manuel", city: "Paris", email: "manuel.farez@gmail.com", password: "mflewagon" )
user2 = User.create(username: "Joffrey", city: "Montpellier", email: "joffrey.cazalbou@gmail.com", password: "jclewagon" )
user3 = User.create(username: "Nathan", city: "Paris", email: "nathan.reix@gmail.com", password: "nrlewagon" )
user4 = User.create(username: "Francis", city: "Tours", email: "francis.berger@gmail.com", password: "fblewagon" )

puts "creating sozees ..."
sozee1 = Sozee.new(sozee_name: "François Hollande", description: "Parce qu'il faut toujours un représentant politique dans vos cocktails dinatoires", category: "Politique", price_per_hour: 100, user: user1)
sozee2 = Sozee.new(sozee_name: "Johnny", description: "Ah que je t'aime, voix parfaite", category: "Chanteur", price_per_hour: 10, user: user2)
sozee3 = Sozee.new(sozee_name: "Bruce Willis", description: "Prêt à mettre de l'action dans vos soirées... ", category: "Acteur", price_per_hour: 20, user: user3)
sozee4 = Sozee.new(sozee_name: "Céline Dion", description: "blablablaaaaa bla bla blaaa blaaaaa", category: "Chanteur", price_per_hour: 1000, user: user4)

puts "adding photos to sozees ..."
sozee1.remote_photo_url = 'http://www.sosiestar.com/wp-content/uploads/2015/07/sosie-metisse-de-francois-hollande.jpg'
sozee2.remote_photo_url = 'https://img2.telestar.fr/var/telestar/storage/images/media/images/2014/photos/johnny-hallyday/hallyday_013/203099-1-fre-FR/hallyday_013_width1024.jpg'
sozee3.remote_photo_url = 'http://www.potins.net/wp-content/uploads/2017/07/bruce-willis-carrie%CC%80re.jpg'
sozee4.remote_photo_url = 'http://www.starway-agency.com/flo/album1photo1.jpg'

puts "saving sozees ..."
sozee1.save
sozee2.save
sozee3.save
sozee4.save

