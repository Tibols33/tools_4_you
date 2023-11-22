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

user2 = User.create!(email: "jean@hotmail.fr" , password: "baoby21", password_confirmation: "baoby21", first_name: "Jacques", last_name: "JEAN" )

user3 = User.create!(email: "alain@hotmail.fr" , password: "andredu33", password_confirmation: "andredu33", first_name: "Alain", last_name: "AFFLELOU" )

Tool.create!(name: "Pioche collector", description: "Je mets en vente une pioche magnifique en excellent état, parfaite pour tous vos projets de bricolage et d'aménagement paysager. Cette pioche a été soigneusement entretenue et présente un état impeccable, prête à vous accompagner dans toutes vos tâches. Offre à saisir rapidement, une belle idée de cadeau à faire pour vos proches.", address: "Place du marché aux cochons de lait, Strasbourg", price: 15, user: user3  )

Tool.create!(name: "Marteau Uru", description: " Il a une tête carrée et une poignée courte. On dit qu'il a été forgé par des nains à partir d'un métal magique appelé Uru. Ce marteau est très puissant et a des pouvoirs magiques. Thor, le dieu nordique, peut le lancer loin, et il revient toujours dans sa main. Seul Thor, s'il est digne, peut le soulever. Parfait pour régler vos problèmes de voisinage", address: "Meritullinkatu 10 00170 Helsinki ", price: 5, user: user2  )

Tool.create!(name: "Brouette custom", description: "Brouette de chantier", address: "Les ecuries de Montcarra, 100 Imp. Bidaud, 38890 Montcarra", price: "150", user: user1 )
