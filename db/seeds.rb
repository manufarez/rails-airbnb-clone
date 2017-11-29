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
user1 = User.create(username: "Hollandus", city: "Paris", email: "manuel.farez@gmail.com", password: "mflewagon" )
user2 = User.create(username: "Jojo le routard", city: "Montpellier", email: "joffrey.cazalbou@gmail.com", password: "jclewagon" )
user3 = User.create(username: "Nicolas", city: "Paris", email: "nicolas.lizop@gmail.com", password: "nzlewagon" )
user4 = User.create(username: "Céline la matrone", city: "Tours", email: "francis.berger@gmail.com", password: "fblewagon" )
user5 = User.create(username: "Stromi le sosie", city: "Paris", email: "random.random@gmail.com", password: "rrlewagon" )
user6 = User.create(username: "Micron", city: "Paris", email: "random1.random1@gmail.com", password: "rr1lewagon" )
user7 = User.create(username: "Emmanuel", city: "Paris", email: "Emmanuel.random@gmail.com", password: "rrlewagon" )
user8 = User.create(username: "Brigitte Macron", city: "Paris", email: "Brigitte.random@gmail.com", password: "rrlewagon" )
puts "creating sozees ..."
sozee1 = Sozee.new(sozee_name: "François Hollande", description: "Parce qu'il faut toujours un représentant politique dans vos cocktails dinatoires", category: "Politique", price_per_hour: 100, user: user1)
sozee2 = Sozee.new(sozee_name: "Johnny Hallyday", description: "Ah que je t'aime, voix parfaite", category: "Chanteur", price_per_hour: 10, user: user2)
sozee3 = Sozee.new(sozee_name: "Fabien Barthez", description: "Prêt à mettre de l'action dans vos soirées !", category: "Acteur", price_per_hour: 20, user: user3)
sozee4 = Sozee.new(sozee_name: "Céline Dion", description: "blablablaaaaa bla bla blaaa blaaaaa", category: "Chanteur", price_per_hour: 1000, user: user4)
sozee5 = Sozee.new(sozee_name: "Stromae", description: "blablablaaaaa bla bla blaaa blaaaaa alors on danse", category: "Politique", price_per_hour: 100, user: user5)
sozee6 = Sozee.new(sozee_name: "Emmanuel Macron", description: "C'est de la poudre de perlinpinpin", category: "Politique", price_per_hour: 1500, user: user6)
sozee7 = Sozee.new(sozee_name: "Jean-Vincent Placé", description: "Prêt à mettre de l'action dans vos soirées... ", category: "Acteur", price_per_hour: 20, user: user7)
sozee8 = Sozee.new(sozee_name: "Brigitte Macron", description: "blablablaaaaa bla bla blaaa blaaaaa", category: "Première Dame", price_per_hour: 7900, user: user8)
puts "adding photos to sozees ..."
sozee1.remote_photo_url = 'http://www.sosiestar.com/wp-content/uploads/2015/07/sosie-metisse-de-francois-hollande.jpg'
sozee2.remote_photo_url = 'https://img2.telestar.fr/var/telestar/storage/images/media/images/2014/photos/johnny-hallyday/hallyday_013/203099-1-fre-FR/hallyday_013_width1024.jpg'
sozee3.remote_photo_url = 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/5/000/1aa/260/3e293d1.jpg'
sozee4.remote_photo_url = 'http://www.starway-agency.com/flo/album1photo1.jpg'
sozee5.remote_photo_url = 'http://www.paris-normandie.fr/documents/10157/0/mod01/image_content_general_17845557_20141028161856.jpg'
sozee6.remote_photo_url = 'https://www.francetvinfo.fr/image/75e5y9n5e-6c18/578/598/12338640.jpg'
sozee7.remote_photo_url = 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAA0fAAAAJDc0Nzk1ZTcyLWQwZjItNDhiMi1iMzM4LTEwMGNkYzE3MzYxMA.jpg'
sozee8.remote_photo_url = 'https://img1.closermag.fr/var/closermag/storage/images/1/2/5/6/8/12568759/kim-kardashian-toujours-aussi-traumatisee-par-son-agression-paris-cesse-pleurer_exact540x405_l.jpg'
puts "saving sozees ..."
sozee1.save
sozee2.save
sozee3.save
sozee4.save
sozee5.save
sozee6.save
sozee7.save
sozee8.save
