# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Speaker.create({first_name: "Dani", last_name: "Zaghian", email: "danielle@actualize.co"})
# 50.times do
#   first_name = FFaker::Name.first_name
#   last_name = FFaker::Name.last_name
#   email = "#{first_name}#{last_name}@gmail.com"
#   speaker1 = Speaker.new(first_name: first_name, last_name: last_name, email: email)
#   speaker1.save
# end
meeting1 = Meeting.new(title: "27th International Congress of The Transplantation Society", agenda: "Post Graduate Course: Joint Session 1: Academic Survival Kit", time: "30 June 2019, 8:30 AM to 10:45 AM")
meeting1.save

meeting1 = Meeting.new(title: "13th Congress of the International Society of Vascularized Composite Allotransplantation", agenda: "Opening and Welcome", time: "30 June 2019, 11:00 AM to 12:30 AM")
meeting1.save

meeting1 = Meeting.new(title: " 14th Congress of the International Xenotransplantation Association", agenda: "FDA-IXA Workshop - Session 1: Recent Advances in Preclinical Xenotransplantation Models", time: "30 June 2019, 12:45 AM to 2:00 AM")
meeting1.save


