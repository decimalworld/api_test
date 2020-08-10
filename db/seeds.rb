# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Post.destroy_all

post_list = [
  [ "first user", "first post", "some random text", false],
  [ "second user", "second post", "some random text", true]
]

post_list.each do |username, title, detail, edited|
  Post.create(username:username, title:title, detail:detail, edited: edited)
end