# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'delete all...'
Post.delete_all
User.delete_all
Space.delete_all

p 'seeding...'
carms = User.create!(email: "carms@agirmontreal.org", nickname: "carms", password: "123456")
cynti = User.create!(email: "cynti@agirmontreal.org", nickname: "cynti", password: "123456")
iyan = User.create!(email: "iyan@agirmontreal.org", nickname: "iyan", password: "123456")

general = Space.create!(name: "General", description: "Everybody is welcome here!")
housing = Space.create!(name: "Housing", description: "Looking for an apartment? a roomate?")

p1 = Post.create!(title: 'p1 general', content: 'test post from carms', user: carms, space: general)
p2 = Post.create!(title: 'p2 general', content: 'test post from iyan', user: iyan, space: general)
p 'done!'
