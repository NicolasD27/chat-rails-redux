# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Destroy messages, users and channels (in that order)
# Create some channels (general, paris, react for instance)
# Create some users (needs email / password)
# Create some messages in several channels.
puts "destroying messages, users and channels"
Message.destroy_all
User.destroy_all
Channel.destroy_all
puts "messages, users and channels destroyed"

general = Channel.create(name: "general")
paris = Channel.create(name: "paris")
react = Channel.create(name: "react")
puts "channels created"

nico = User.create(email: "nicolas@gmail.com", password: "azerty", nickname: "nick")
anna = User.create(email: "anna@gmail.com", password: "azerty", nickname: "Anna")
lily = User.create(email: "lily@gmail.com", password: "azerty", nickname: "Lily")
helo = User.create(email: "helo@gmail.com", password: "azerty", nickname: "Helo")
puts "users created"
Message.create(content: "hello", channel: general, user: nico)
Message.create(content: "salut", channel: general, user: helo)
Message.create(content: "konichua", channel: general, user: anna)
Message.create(content: "hey", channel: general, user: lily)
Message.create(content: "ça va ?", channel: paris, user: nico)
Message.create(content: "alright", channel: paris, user: nico)
Message.create(content: "WTF", channel: paris, user: nico)
puts "messages created"
