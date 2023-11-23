 # This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
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
tool1 = Tool.new(name: "Brouette custom max", description: "Je mets en location la brouette de mon oncle Pierro. Moteur 125cc, sortie double pots, plus efficace que les gros bras de tonton bernard. Elle fera rougir vos tomates et épatera votre voisine. Me contacter rapidement car beaucoup de demandes. ", address: "Les ecuries de Montcarra, 100 Imp. Bidaud, 38890 Montcarra", price: 15, user: user1  )
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

# Tool.create!(name: "Marteau Uru", description: " Il a une tête carrée et une poignée courte. On dit qu'il a été forgé par des nains à partir d'un métal magique appelé Uru. Ce marteau est très puissant et a des pouvoirs magiques. Thor, le dieu nordique, peut le lancer loin, et il revient toujours dans sa main. Seul Thor, s'il est digne, peut le soulever. Parfait pour régler vos problèmes de voisinage", address: "Meritullinkatu 10 00170 Helsinki ", price: 5, user: user2  )


# Tool.create!(name: "Brouette custom", description: "Brouette de chantier", address: "Les ecuries de Montcarra, 100 Imp. Bidaud, 38890 Montcarra", price: "150", user: user1 )
