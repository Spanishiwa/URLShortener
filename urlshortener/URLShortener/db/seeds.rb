# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  User.create(email: "user1@com")
  User.create(email: "user2@com")
  User.create(email: "user3@com")

  ShortenedUrl.create(short_url: "short", long_url: "long", user_id: 1)
end
