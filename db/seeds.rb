# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
icon = ""
User.create(name:"John Doe", email: "doe@mail.com", password: "qwerty")
User.first.groups.create([{name: "fast food", icon:icon}, {name: "new group", icon:icon}, {name: "test group", icon:icon }])
User.first.groups.first.entities.create([{name: "transac1", amount: 50, user_id: User.first.id}, {name: "transac2", amount: 20, user_id: User.first.id}, {name: "transac3", amount: 10, user_id: User.first.id}])
User.first.groups.second.entities.create([{name: "transac10", amount: 40, user_id: User.first.id},{name: "transac22", amount: 2, user_id: User.first.id}, {name: "transac34", amount: 11, user_id: User.first.id}])
User.first.groups.third.entities.create([{name: "transac0", amount: 30, user_id: User.first.id}, {name: "transac552", amount: 27, user_id: User.first.id}, {name: "transac3d4", amount: 101, user_id: User.first.id}])
