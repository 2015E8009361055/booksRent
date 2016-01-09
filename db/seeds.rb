<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(name: "Example User", email: "example@railstutorial.org",
             password:  "769609310xd",
             password_confirmation: "769609310xd",
             admin: true)

90.times do |n|
   name = Faker::Name.name
   email ="example-#{n+1}@railstutorial.org"
   password ="password"
   User.create!(name: name,
                email:email,
                password:    password,
                password_confirmation: password)

end

=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(name: "Example User", email: "example@railstutorial.org",
             password:  "769609310xd",
             password_confirmation: "769609310xd",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

90.times do |n|
   name = Faker::Name.name
   email ="example-#{n+1}@railstutorial.org"
   password ="password"
   User.create!(name: name,
                email:email,
                password:    password,
                password_confirmation: password,
                activated: true,
                activated_at: Time.zone.now)

end

>>>>>>> 3a6d52f6ab8cc86bed5eb6fcf6788c7f30372aae
