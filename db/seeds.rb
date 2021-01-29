# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "admin01", email: "admin01@test.com", role: "admin")
User.create(name: "user01", email: "user01@test.com")
User.create(name: "user02", email: "user02@test.com")
User.create(name: "user03", email: "user03@test.com")