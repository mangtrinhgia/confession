# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admins = [
  { user_name: "thinhnv",
    email: "nvthinh.bluesky@gmail.com",
    encrypted_password: "$2a$10$fLBwpa/3Q4NTQWZTJhOIZ.MXp6xNAWoszt76iHlfyA.woUEpaM3QG",
    sign_in_count: "0",
    role: "1" }
]

admins.each do |admin|
  tmp = User.new admin
  tmp.save!(validate: false)
end