 # This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'pry-byebug'
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Tool.destroy_all
User.destroy_all

User.create!(email: "admin@hotmail.fr" , password: "azerty", password_confirmation: "azerty", first_name: "best", last_name: "admin" )

user1 = User.create!(email: "rene@hotmail.fr" , password: "baby21", password_confirmation: "baby21", first_name: "René", last_name: "DUBOIN" )
 
file = File.open("app/assets/images/renelabrouette.jpg")
tool1 = Tool.new(name: "Brouette custom max", description: "Je mets en location la brouette de mon oncle Pierro. Moteur 125cc, sortie double pots, plus efficace que les gros bras de tonton bernard. Elle fera rougir vos tomates et épatera votre voisine. Me contacter rapidement car beaucoup de demandes. ", address: "Les ecuries de Montcarra, 100 Imp. Bidaud, 38890 Montcarra", price: 15, user: user1)
tool1.photo.attach(io: file, filename: "renelabrouette.jpg", content_type: "image/jpg")
tool1.save

user2 = User.create!(email: "jean@hotmail.fr" , password: "baoby21", password_confirmation: "baoby21", first_name: "Jacques", last_name: "JEAN" )

file = File.open("app/assets/images/marteau1.jpg")
tool2 = Tool.new(name: "Marteau Uru", description: "Il a une tête carrée et une poignée courte. On dit qu'il a été forgé par des nains à partir d'un métal magique appelé Uru. Ce marteau est très puissant et a des pouvoirs magiques. Thor, le dieu nordique, peut le lancer loin, et il revient toujours dans sa main. Seul Thor, s'il est digne, peut le soulever. Parfait pour régler vos problèmes de voisinage", address: "Meritullinkatu 10 00170 Helsinki", price: 11, user: user2  )
tool2.photo.attach(io: file, filename: "marteau1.jpg", content_type: "image/jpg")
tool2.save


user3 = User.create!(email: "alain@hotmail.fr" , password: "andredu33", password_confirmation: "andredu33", first_name: "Alain", last_name: "AFFLELOU" )


file = File.open("app/assets/images/Pioche.jpg")
tool3 = Tool.new(name: "Pioche collector", description: "Je mets en location ma magnifique pioche en excellent état, parfaite pour tous vos projets de bricolage et d'aménagement paysager. Cette pioche a été soigneusement entretenue et présente un état impeccable, prête à vous accompagner dans toutes vos tâches. Offre à saisir rapidement, une belle idée de cadeau à faire pour vos proches.", address: "Place du marché aux cochons de lait, Strasbourg", price: 15, user: user3  )
tool3.photo.attach(io: file, filename: "Pioche.jpg", content_type: "image/jpg")
tool3.save

user4 = User.create!(email: "michel@hotmail.fr" , password: "baby21", password_confirmation: "baby21", first_name: "Michel", last_name: "LOPIN" )

file = File.open("app/assets/images/leburineur.jpg")

tool4 = Tool.new(name: "Marteau Piqueur", description: "Vous êtes à la recherche d'un partenaire fiable pour vos projets de construction et de démolition ? Ne cherchez plus ! Je mets à la location mon burineur qui saura vous ravir. L'outil incontournable pour des travaux efficaces et professionnels.. ", address: "2386 Chemin des Reys, 82410 Saint-Etienne-de-Tulmont", price: 10, user: user4  )
tool4.photo.attach(io: file, filename: "leburineur.jpg", content_type: "image/jpg")
tool4.save

user5 = User.create!(email: "adele@hotmail.fr" , password: "baby21", password_confirmation: "baby21", first_name: "Adele", last_name: "VINIOU" )

file = File.open("app/assets/images/compresseur.jpg")

tool5 = Tool.new(name: "Compresseur Air", description: "Mets à la location mon compresseur air, me contacter pour plus d informations", address: "Les Jasses, 34190 Ferrières-les-Verreries", price: 25, user: user5  )
tool5.photo.attach(io: file, filename: "compresseur.jpg", content_type: "image/jpg")
tool5.save

user6 = User.create!(email: "paulphoenix@hotmail.fr" , password: "baby21", password_confirmation: "baby21", first_name: "Paul", last_name: "PHOENIX" )

file = File.open("app/assets/images/manchette.jpg")

tool6 = Tool.new(name: "Manchette magnet", description: "Marre de perdre tes clous ? Je loue ma manchette powerful magnet, presque neuve, rarement utilisée", address: "34 Bd de l'Europe, 69600 Oullins", price: 1, user: user6  )
tool6.photo.attach(io: file, filename: "manchette.jpg", content_type: "image/jpg")
tool6.save


user7 = User.create!(email: "Abou@hotmail.fr", password: "baby21", password_confirmation: "baby21", first_name: "Abou", last_name: "BAKIRI" )

file = File.open("app/assets/images/truelle.png")

tool7 = Tool.new(name: "Truelle", description: "Loue ma truelle rare", address: "350 Rue du Gautier, 69124 Colombier-Saugnieu", price: 0.50, user: user7  )
tool7.photo.attach(io: file, filename: "truelle.png", content_type: "image/png")
tool7.save

user8 = User.create!(email: "backi@hotmail.fr", password: "baby21", password_confirmation: "baby21", first_name: "Backi", last_name: "BAYSANGUR" )

file = File.open("app/assets/images/casque.jpg")

tool8 = Tool.new(name: "Casque Chantier", description: "casque chantier, protection garantie, comme neuf.", address: "4 Rue de la Chevêche, 03410 Domérat", price: 0.99, user: user8  )
tool8.photo.attach(io: file, filename: "casque.jpg", content_type: "image/jpg")
tool8.save

user9 = User.create!(email: "benoit@hotmail.fr", password: "baby21", password_confirmation: "baby21", first_name: "Benoit", last_name: "LESCUR" )

file = File.open("app/assets/images/tronconneuse.jpg")

tool9 = Tool.new(name: "Tronçonneuse", description: "Loue tronçonneuse, réservation minimal pour 1 semaine, chaine en bon état.", address: "1, 36160 Vijon", price: 4.00, user: user9  )
tool9.photo.attach(io: file, filename: "tronconneuse.jpg", content_type: "image/jpg")
tool9.save

user10 = User.create!(email: "juliette@hotmail.fr", password: "baby21", password_confirmation: "baby21", first_name: "Juliette", last_name: "DUPONT" )

file = File.open("app/assets/images/fouine.jpg")

tool10 = Tool.new(name: "Piège à fouines", description: "Bonne occasion à louer, mon piège à fouine, facile à mettre en place. En deux, trois jours vous n'aurez plus rien, je vous le garantie.", address: "36 Rés de la Gare, 78125 Gazeran", price: 1.58, user: user10  )
tool10.photo.attach(io: file, filename: "fouine.jpg", content_type: "image/jpg")
tool10.save

user11 = User.create!(email: "claudia@hotmail.fr", password: "baby21", password_confirmation: "baby21", first_name: "Claudia", last_name: "VARIK" )

file = File.open("app/assets/images/brouette.jpg")

tool11 = Tool.new(name: "Brouette", description: "Brouette qui roule bien.", address: "99 Av. de la Division Leclerc, 95140 Garges-lès-Gonesse", price: 2.53, user: user11  )
tool11.photo.attach(io: file, filename: "brouette.jpg", content_type: "image/jpg")
tool11.save

user12 = User.create!(email: "paolo@hotmail.fr", password: "baby21", password_confirmation: "baby21", first_name: "Paolo", last_name: "SANTI" )

file = File.open("app/assets/images/genoux.jpg")

tool12 = Tool.new(name: "Protèges genoux", description: "Paire de protection genoux pour travaux dans le bâtiment.", address: "77720 Aubepierre-Ozouer-le-Repos", price: 0.33, user: user12  )
tool12.photo.attach(io: file, filename: "genoux.jpg", content_type: "image/jpg")
tool12.save
