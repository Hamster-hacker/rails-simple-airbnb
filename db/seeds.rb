# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Flat.destroy_all

# 2. Create the instances 🏗️
puts "Creating Flats..."
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
puts "Light & Spacious Garden Flat London"

Flat.create!(
  name: 'Cozy Urban Retreat New York',
  address: '123 Broadway, New York, NY 10001',
  description: 'A cozy and modern retreat in the heart of New York City. Perfect for a couple or solo travelers looking to explore the city.',
  price_per_night: 550,
  number_of_guests: 2
)
puts "Cozy Urban Retreat New York"

Flat.create!(
  name: 'Charming Beachfront Villa Malibu',
  address: '1 Pacific Coast Hwy, Malibu, CA 90265',
  description: 'A charming beachfront villa with stunning ocean views, an outdoor terrace, and just steps away from the beach. Ideal for a relaxing getaway.',
  price_per_night: 300,
  number_of_guests: 6
)
puts "Charming Beachfront Villa Malibu"

Flat.create!(
  name: 'Modern Villa in Downtown Santorini',
  address: '50 W Randolph St, Santorini, Greece 84700',
  description: 'A stylish and spacious modern villa located in the heart of Santorini, with easy access to shopping, dining, and major attractions.',
  price_per_night: 1500,
  number_of_guests: 4
)
puts "Modern Villa in Downtown Santorini"

Flat.create!(
  name: 'Elegant Countryside Cottage Edinburgh',
  address: '3 Rose Street, Edinburgh, Scotland EH2 2PR',
  description: 'A beautiful countryside cottage with rustic charm, surrounded by nature and just a short drive from the city center.',
  price_per_night: 95,
  number_of_guests: 4
)
puts "Elegant Countryside Cottage Edinburgh"



# 3. Display a message 🎉
puts "Finished! Created #{Flat.count} Flats."
