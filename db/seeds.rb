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

User.create!(email: "jojo@hotmail.fr" , password: "baby21", password_confirmation: "baby21", first_name: "jojo", last_name: "patate" )

User.create!(email: "boby@hotmail.fr" , password: "baoby21", password_confirmation: "baoby21", first_name: "boby", last_name: "patatouille" )

User.create!(email: "andre@hotmail.fr" , password: "andredu33", password_confirmation: "andredu33", first_name: "andre", last_name: "affelou" )

Tool.create!(name: "Pioche", description: "La meilleure pioche du monde", address: "chez moi", price: 20.5, user_id: User.all.sample.id )

Tool.create!(name: "Marteau", description: "acheter chez manomano", address: "chez ma mère", price: 10.5, user_id: User.all.sample.id )

Tool.create!(name: "Brouette", description: "Brouette de chantier", address: "chez Theo", price: 20.5, user_id: User.all.sample.id )
