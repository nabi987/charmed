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
Necklace.create(name: 'Silver Cloud', price: 500.50, description: 'bridal', gemstone: 'ruby', material: 'pure silver', user: user1, image_url: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.zjetXZ7pkmOlZxiUpFFYeAHaE8%26pid%3DApi&f=1&ipt=cc7d71d4d94c5c2ee17b5d16259c03fff77932b8a71a6f003f5e588108d96171&ipo=images')


Necklace.create(name: 'Goldeneye', price: 750.75, description: 'heavy', gemstone: 'saphire', material: 'Rose Gold', user: user1, image_url: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.f4IY2cRr_XRY-Z7Fp_Q2BwHaHa%26pid%3DApi&f=1&ipt=5f850ccbf48514bd1b3f4168a4d21f69db10f6da2521ea95f06c82f307b1b6ca&ipo=images' )


Necklace.create(name: 'Diamond Geezer', price: 680.90, description: 'pure silver', gemstone: 'opal', material: 'silver', user: user2, image_url: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.4GRwGkSHu1h6NtxS8SLVAAHaLH%26pid%3DApi&f=1&ipt=af8d89de11ae11c733aba328b2ba832d8589bec365b4148b1028bf0f036dcd41&ipo=images')


puts "Done #{User.count} users and #{Necklace.count} necklaces created"
