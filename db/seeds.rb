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

user1 = User.new(username: "Leonard Messi", city: "Paris", email: "manuel.farez@gmail.com", password: "mflewagon")
user2 = User.new(username: "Juste Jésus", city: "Paris", email: "joffrey.cazalbou@gmail.com", password: "jclewagon")
user3 = User.new(username: "Fabrice Barthez", city: "Paris", email: "nicolas.lizop@gmail.com", password: "nzlewagon")
user4 = User.new(username: "Céline D'yon", city: "Paris", email: "francis.berger@gmail.com", password: "fblewagon")
user5 = User.new(username: "Kim Jong Deux", city: "Paris", email: "random.random@gmail.com", password: "rrlewagon")
user6 = User.new(username: "Michel Jacqueson", city: "Paris", email: "random1.random1@gmail.com", password: "rr1lewagon")
user7 = User.new(username: "Rayan Gosselin", city: "Paris", email: "Emmanuel.random@gmail.com", password: "rrlewagon")
user8 = User.new(username: "Nelson Mandella", city: "Paris", email: "Brigitte.random@gmail.com", password: "rrlewagon")
user9 = User.new(username: "Johnnie Holiday", city: "Paris", email: "johnny.random@gmail.com", password: "rrlewagon")
user10 = User.new(username: "Johnny Halidé", city: "Paris", email: "johnny54.random@gmail.com", password: "rrlewagon")
user11 = User.new(username: "Joffrey", city: "Paris", email: "joffrey@gmail.com", password: "joffrey")


puts "adding photos to users..."
user1.remote_photo_url = 'http://lebuzz.eurosport.fr/wp-content/uploads/sites/3/2017/05/sosie-messi-iran-solo-1170x658.jpg'
user2.remote_photo_url = 'https://cdn.mpasho.co.ke/wp-content/uploads/2016/11/Daniel-Christos-1778.jpg'
user3.remote_photo_url = 'http://4.bp.blogspot.com/-Unqrgt17hp0/UqjZYE5UOBI/AAAAAAAAAJA/1UT9BpO0tt8/s1600/IMG_2486.JPG'
user4.remote_photo_url = 'http://www.starway-agency.com/flo/album1photo1.jpg'
user5.remote_photo_url = 'https://i.ytimg.com/vi/RlOaxe5C2nE/maxresdefault.jpg'
user6.remote_photo_url = 'https://i.ytimg.com/vi/dIzvdEGqg14/maxresdefault.jpg'
user7.remote_photo_url = 'http://bravo.ly/2ALDLsq'
user8.remote_photo_url = 'http://www.trbimg.com/img-59301dcd/turbine/la-et-entertainment-news-updates-june-a-star-is-born-morgan-freeman-turns-80-1496268967'
user9.remote_photo_url = 'https://culturebox.francetvinfo.fr/sites/default/files/assets/images/2016/08/vlcsnap-2016-08-27-15h23m43s0.png'
user10.remote_photo_url = 'https://france3-regions.francetvinfo.fr/normandie/sites/regions_france3/files/styles/top_big/public/assets/images/2013/10/08/johnny_rock.jpg'
user11.remote_photo_url = 'http://res.cloudinary.com/dvwo2ow8v/image/upload/v1512144099/<Capture_d_e%CC%81cran_2017-12-01_a%CC%80_17 class="01 15_ih15j4 png"></Capture_d_e%CC%81cran_2017-12-01_a%CC%80_17>'


puts "saving users..."
user1.save!
user2.save!
user3.save!
user4.save!
user5.save!
user6.save!
user7.save!
user8.save!
user9.save!
user10.save!

puts "creating sozees..."

sozee1 = Sozee.new(sozee_of: "Lionel Messi", sozee_name: "Leonard Messi", description: "Sosie officiel de la pulga, j'imite son regard attachant et son accent à la perfection mais je ne touche pas le ballon.", category: "Sport", price_per_hour: 1000, user: user1, latitude: 48.870299, longitude: 2.389295 )
sozee2 = Sozee.new(sozee_of: "Jésus", sozee_name: "Juste Jésus", description: "Pour ambiancer vos évènements, rien de mieux qu'un verre avec Jésus !", category: "Histoire", price_per_hour: 10, user: user2, latitude: 48.865032, longitude: 2.379843 )
sozee3 = Sozee.new(sozee_of: "Johnny Depp", sozee_name: "Germain Depp", description: "Elu 3 fois meilleur Jack Sparrow de France. Prêt à mettre de l'action dans vos soirées !", category: "Cinéma", price_per_hour: 20, user: user3, latitude: 48.870620, longitude: 2.316765 )
sozee4 = Sozee.new(sozee_of: "Céline Dion", sozee_name: "Céline D'yon", description: "J'irai chercher ton cœur si tu l'emportes ailleurs
Même si dans tes danses d'autres dansent tes heures
J'irai chercher ton âme dans les froids, dans les flammes
Je te jetterai des sorts pour que tu m'aimes encore
", category: "Musique", price_per_hour: 1000, user: user4, latitude: 48.870764, longitude: 2.347361 )
sozee5 = Sozee.new(sozee_of: "Kim Jong Un", sozee_name: "Kim Jong Deux", description: "Instaurez une dictature dans votre soirée ! Je vous propose également mes services d'artificier.", category: "Politique", price_per_hour: 100, user: user5, latitude: 48.843295, longitude: 2.326514 )
sozee6 = Sozee.new(sozee_of: "Michael Jackson", sozee_name: "Michel Jacquesson", description: "Sosie officiel de MJ à Paris depuis 1998. Je suis également interprète et danseur.", category: "Musique", price_per_hour: 1500, user: user6, latitude: 48.831118, longitude: 2.354568 )
sozee7 = Sozee.new(sozee_of: "Ryan Gosling", sozee_name: "Rayan Gosselin", description: "Prêt à mettre de l'action dans vos soirées... NB : Je ne fais que des EVJF!", category: "Cinéma", price_per_hour: 20, user: user7, latitude: 48.885906, longitude: 2.294265 )
sozee8 = Sozee.new(sozee_of: "Nelson Mandela", sozee_name: "Nelson Mandella", description: "Sosie de Mandela depuis sa sortie de Robben Island, j'interprète également Dieu à l'occasion (voir tarifs divins en détail).", category: "Histoire", price_per_hour: 790, user: user8, latitude: 48.838736, longitude: 2.378595 )
sozee9 = Sozee.new(sozee_of: "Johnny Hallyday", sozee_name: "Johnnie Holiday", description: "Le plus vrai de tous de tous les faux Johnny, je chante comme Johnny, je bois comme Johnny, bref je vis Johnny! Pour tous vos mariages, anniversaires, baptêmes, communions, divorces, etc. Le Johnny qu'il vous faut.", category: "Musique", price_per_hour: 390, user: user9, latitude: 48.828736, longitude: 2.378535 )
sozee10 = Sozee.new(sozee_of: "Johnny Hallyday", sozee_name: "Johnny Halidé", description: "A votre service pour ALLUMER LE FEU, je suis le plus fidèle des sosies de Johnny, actif à ses côtés depuis plus de 30 ans! Je joue de la guitare et fais des sculptures en ballons baudruche pour les occasions spéciales avec les plus petites.", category: "Musique", price_per_hour: 360, user: user10, latitude: 48.828456, longitude: 2.378500 )


puts "adding photos to sozees..."
sozee1.remote_photo_url = 'http://lebuzz.eurosport.fr/wp-content/uploads/sites/3/2017/05/sosie-messi-iran-solo-1170x658.jpg'
sozee2.remote_photo_url = 'https://cdn.mpasho.co.ke/wp-content/uploads/2016/11/Daniel-Christos-1778.jpg'
sozee3.remote_photo_url = 'http://4.bp.blogspot.com/-Unqrgt17hp0/UqjZYE5UOBI/AAAAAAAAAJA/1UT9BpO0tt8/s1600/IMG_2486.JPG'
sozee4.remote_photo_url = 'http://www.starway-agency.com/flo/album1photo1.jpg'
sozee5.remote_photo_url = 'https://i.ytimg.com/vi/RlOaxe5C2nE/maxresdefault.jpg'
sozee6.remote_photo_url = 'https://i.ytimg.com/vi/dIzvdEGqg14/maxresdefault.jpg'
sozee7.remote_photo_url = 'http://bravo.ly/2ALDLsq'
sozee8.remote_photo_url = 'http://www.trbimg.com/img-59301dcd/turbine/la-et-entertainment-news-updates-june-a-star-is-born-morgan-freeman-turns-80-1496268967'
sozee9.remote_photo_url = 'https://culturebox.francetvinfo.fr/sites/default/files/assets/images/2016/08/vlcsnap-2016-08-27-15h23m43s0.png'
sozee10.remote_photo_url = 'https://france3-regions.francetvinfo.fr/normandie/sites/regions_france3/files/styles/top_big/public/assets/images/2013/10/08/johnny_rock.jpg'

puts "saving sozees..."
sozee1.save!
sozee2.save!
sozee3.save!
sozee4.save!
sozee5.save!
sozee6.save!
sozee7.save!
sozee8.save!
sozee9.save!
sozee10.save!

puts "Seeds done!"
