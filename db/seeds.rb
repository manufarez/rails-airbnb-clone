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

puts "creating users..."
user1 = User.create(username: "Hollandus", city: "Paris", email: "manuel.farez@gmail.com", password: "mflewagon")
user2 = User.create(username: "Jojo le routard", city: "Montpellier", email: "joffrey.cazalbou@gmail.com", password: "jclewagon")
user3 = User.create(username: "Nicolas", city: "Paris", email: "nicolas.lizop@gmail.com", password: "nzlewagon")
user4 = User.create(username: "Céline la matrone", city: "Tours", email: "francis.berger@gmail.com", password: "fblewagon")
user5 = User.create(username: "Stromi le sosie", city: "Paris", email: "random.random@gmail.com", password: "rrlewagon")
user6 = User.create(username: "Micron", city: "Paris", email: "random1.random1@gmail.com", password: "rr1lewagon")
user7 = User.create(username: "Emmanuel", city: "Paris", email: "Emmanuel.random@gmail.com", password: "rrlewagon")
user8 = User.create(username: "Brigitte Macron", city: "Paris", email: "Brigitte.random@gmail.com", password: "rrlewagon")
user9 = User.create(username: "no_booking_user", city: "Paris", email: "nbu@gmail.com", password: "nbu")
user10 = User.create(username: "booking_user", city: "Paris", email: "bu@gmail.com", password: "bu")

puts "adding photos to users..."
user1.remote_photo_url = 'https://www.google.fr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwiggou4uebXAhXrAcAKHZrhBK8QjBwIBA&url=https%3A%2F%2Fwww.shareicon.net%2Fdownload%2F2016%2F09%2F01%2F822711_user_512x512.png&psig=AOvVaw34yIMkraE4A46itKBY8OSA&ust=1512136463748400'
user2.remote_photo_url = 'https://img2.telestar.fr/var/telestar/storage/images/media/images/2014/photos/johnny-hallyday/hallyday_013/203099-1-fre-FR/hallyday_013_width1024.jpg'
user3.remote_photo_url = 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/5/000/1aa/260/3e293d1.jpg'
user4.remote_photo_url = 'http://www.starway-agency.com/flo/album1photo1.jpg'
user5.remote_photo_url = 'http://www.paris-normandie.fr/documents/10157/0/mod01/image_content_general_17845557_20141028161856.jpg'
user6.remote_photo_url = 'https://www.francetvinfo.fr/image/75e5y9n5e-6c18/578/598/12338640.jpg'
user7.remote_photo_url = 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAA0fAAAAJDc0Nzk1ZTcyLWQwZjItNDhiMi1iMzM4LTEwMGNkYzE3MzYxMA.jpg'
user8.remote_photo_url = 'https://img1.closermag.fr/var/closermag/storage/images/1/2/5/6/8/12568759/kim-kardashian-toujours-aussi-traumatisee-par-son-agression-paris-cesse-pleurer_exact540x405_l.jpg'
user9.remote_photo_url = 'https://www.google.fr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwiggou4uebXAhXrAcAKHZrhBK8QjBwIBA&url=https%3A%2F%2Fwww.shareicon.net%2Fdownload%2F2016%2F09%2F01%2F822711_user_512x512.png&psig=AOvVaw34yIMkraE4A46itKBY8OSA&ust=1512136463748400'
user10.remote_photo_url = 'https://www.google.fr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwiggou4uebXAhXrAcAKHZrhBK8QjBwIBA&url=https%3A%2F%2Fwww.shareicon.net%2Fdownload%2F2016%2F09%2F01%2F822711_user_512x512.png&psig=AOvVaw34yIMkraE4A46itKBY8OSA&ust=1512136463748400'

puts "saving users..."
user1.save
user2.save
user3.save
user4.save
user5.save
user6.save
user7.save
user8.save
user9.save
user10.save

puts "creating sozees..."
sozee1 = Sozee.new(sozee_of: "François Hollande", sozee_name: "Hollandus", description: "Parce qu'il faut toujours un représentant politique dans vos cocktails dinatoires", category: "Politique", price_per_hour: 100, user: user1, latitude: 37.4238253802915, longitude: -122.0829009197085 )
sozee2 = Sozee.new(sozee_of: "Johnny Hallyday", sozee_name: "Jojo le routard", description: "Ah que je t'aime, voix parfaite", category: "Chanteur", price_per_hour: 10, user: user2, latitude: 37.4238253802915, longitude: -122.0829009197085 )
sozee3 = Sozee.new(sozee_of: "Fabien Barthez", sozee_name: "Nicolas", description: "Prêt à mettre de l'action dans vos soirées !", category: "Acteur", price_per_hour: 20, user: user3, latitude: 37.4238253802915, longitude: -122.0829009197085 )
sozee4 = Sozee.new(sozee_of: "Céline Dion", sozee_name: "Céline la matrone", description: "blablablaaaaa bla bla blaaa blaaaaa", category: "Chanteur", price_per_hour: 1000, user: user4, latitude: 37.4238253802915, longitude: -122.0829009197085 )
sozee5 = Sozee.new(sozee_of: "Stromae", sozee_name: "Stromi le sosie", description: "blablablaaaaa bla bla blaaa blaaaaa alors on danse", category: "Politique", price_per_hour: 100, user: user5, latitude: 37.4238253802915, longitude: -122.0829009197085 )
sozee6 = Sozee.new(sozee_of: "Emmanuel Macron", sozee_name: "Micron", description: "C'est de la poudre de perlinpinpin", category: "Politique", price_per_hour: 1500, user: user6, latitude: 37.4238253802915, longitude: -122.0829009197085 )
sozee7 = Sozee.new(sozee_of: "Jean-Vincent Placé", sozee_name: "Emmanuel", description: "Prêt à mettre de l'action dans vos soirées... ", category: "Acteur", price_per_hour: 20, user: user7, latitude: 37.4238253802915, longitude: -122.0829009197085 )
sozee8 = Sozee.new(sozee_of: "Brigitte Macron", sozee_name: "Bribri", description: "blablablaaaaa bla bla blaaa blaaaaa", category: "Première Dame", price_per_hour: 7900, user: user8, latitude: 37.4238253802915, longitude: -122.0829009197085 )
sozee9 = Sozee.new(sozee_of: "Booked_sozee", sozee_name:"Jesuisbooképar:no_booking_user", description: "blablablaaaaa bla bla blaaa blaaaaa", category: "Première Dame", price_per_hour: 7900, user: user9, latitude: 37.4238253802915, longitude: -122.0829009197085 )

puts "adding photos to sozees..."
sozee1.remote_photo_url = 'http://www.sosiestar.com/wp-content/uploads/2015/07/sosie-metisse-de-francois-hollande.jpg'
sozee2.remote_photo_url = 'https://img2.telestar.fr/var/telestar/storage/images/media/images/2014/photos/johnny-hallyday/hallyday_013/203099-1-fre-FR/hallyday_013_width1024.jpg'
sozee3.remote_photo_url = 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/5/000/1aa/260/3e293d1.jpg'
sozee4.remote_photo_url = 'http://www.starway-agency.com/flo/album1photo1.jpg'
sozee5.remote_photo_url = 'http://www.paris-normandie.fr/documents/10157/0/mod01/image_content_general_17845557_20141028161856.jpg'
sozee6.remote_photo_url = 'https://www.francetvinfo.fr/image/75e5y9n5e-6c18/578/598/12338640.jpg'
sozee7.remote_photo_url = 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAA0fAAAAJDc0Nzk1ZTcyLWQwZjItNDhiMi1iMzM4LTEwMGNkYzE3MzYxMA.jpg'
sozee8.remote_photo_url = 'https://img1.closermag.fr/var/closermag/storage/images/1/2/5/6/8/12568759/kim-kardashian-toujours-aussi-traumatisee-par-son-agression-paris-cesse-pleurer_exact540x405_l.jpg'
sozee9.remote_photo_url = 'https://www.google.fr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwiggou4uebXAhXrAcAKHZrhBK8QjBwIBA&url=https%3A%2F%2Fwww.shareicon.net%2Fdownload%2F2016%2F09%2F01%2F822711_user_512x512.png&psig=AOvVaw34yIMkraE4A46itKBY8OSA&ust=1512136463748400'

puts "saving sozees..."
sozee1.save
sozee2.save
sozee3.save
sozee4.save
sozee5.save
sozee6.save
sozee7.save
sozee8.save
sozee9.save

puts "Seeds done!"
