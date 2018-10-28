# This file should contain all the record creation needed to
#   seed the database with its default values. The data can then
#   be loaded with the rails db:seed command
#   (or created alongside the database with db:setup).
#
# Examples:
#   hashes = [{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]
#   movies = Movie.create(hashes)
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Joe Torreggiani',
             username: 'jtorreggiani',
             email: 'joetorreggiani@gmail.com',
             password: 'password',
             password_confirmation: 'password')
