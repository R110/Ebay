# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "Jed", email_address: "jed@aol.com")
User.create(name: "Jo", email_address: "jo@aol.com")
User.create(name: "John", email_address: "john@aol.com")

Product.create(title: "Ruby", description: "dynamic", deadline:"tues", user: User.first)
Product.create(title: "Javascript", description: "dynamic", deadline:"wed", user: User.first)
