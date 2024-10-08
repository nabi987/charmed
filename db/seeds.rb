# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'cleaning the database'
Necklace.destroy_all
User.destroy_all

puts 'Creating Users...'
user1 = User.create!(email: 'Dee123@zxc.com', password: 'dffhjg')
user2 = User.create!(email: 'Lee456@zxc.com', password: 'dfhkghhjkj')
user3 = User.create!(email: 'Jagoda789@zxc.com', password: 'rghfjgh')

puts 'Finished!'

puts 'Creating necklaces...'
Necklace.create(name: 'Silver Cloud', price: 500.50, description: 'bridal', gemstone: 'ruby', material: 'pure silver', user: user1)


Necklace.create(name: 'Goldeneye', price: 750.75, description: 'heavy', gemstone: 'saphire', material: 'Rose Gold', user: user1)


Necklace.create(name: 'Diamond Geezer', price: 680.90, description: 'pure silver', gemstone: 'opal', material: 'silver', user: user2)


puts "Done #{User.count} users and #{Necklace.count} necklaces created"
