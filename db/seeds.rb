# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Sur les conseils de Lionel pour reset les id
# JoinTableGossipTag.destroy_all
# ActiveRecord::Base.connection.reset_pk_sequence!('jointablegossiptags')

City.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('cities')
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
Tag.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('tags')
Gossip.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('gossips')
PrivateMessage.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('privatemessages')
Comment.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('comments')
Like.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('likes')

10.times do |_|
  City.create(name: Faker::Address.city,
              zip_code: Faker::Address.zip_code)
end

10.times do |_|
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              age: rand(18..60),
              description: Faker::Lorem.paragraph,
              city: City.all.sample)
  #User.last.update(email: Faker::Internet.email(name: [User.last.first_name, User.last.last_name].join('.')))
end

10.times do |_|
  Tag.create(title: '#' + Faker::Hobby.activity)
end

20.times do |_|
  Gossip.create(title: Faker::Lorem.word,
                content: Faker::Lorem.paragraph,
                user: User.all.sample)
  # rand(1..4).times do |_i|
  #   Gossip.last.tags << Tag.all.sample
  # end
  #Gossip.last.tags.uniq!
end

5.times do |_|
  PrivateMessage.create(content: Faker::Lorem.sentence,
                        sender: User.all.sample)
  rand(1..3).times do |_i|
    PrivateMessage.last.recipients << User.all.sample
  end
end

20.times do |_|
  Comment.create(user: User.all.sample,
                 gossip: Gossip.all.sample,
                 content: Faker::Lorem.sentence)
end

20.times do |_|
  Comment.create(user: User.all.sample,
                 parent_comment: Comment.all.sample,
                 content: Faker::Lorem.sentence)
end

10.times do |_|
  Like.create(user: User.all.sample,
              gossip: Gossip.all.sample)
end

10.times do |_|
  Like.create(user: User.all.sample,
              comment: Comment.all.sample)
end
