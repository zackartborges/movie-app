# require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# actor = Actor.create({ first_name: "Timon", last_name: "Limon", known_for: "Lion King" })
# actor = Actor.create({ first_name: "Will", last_name: "Smith", known_for: "I am Legend" })
# actor = Actor.create({ first_name: "Jim", last_name: "Carrey", known_for: "Bruce Almighty" })
# movie = Movie.create ({ title: "One Flew Over the Cuckoo's Nest", year: 1979, plot: "A man decides to go to a mental hospital instead of prison, though he is not mentally challenged." })
# movie = Movie.create ({ title: "Hereditary", year: 2018, plot: "This family just keeps getting crazier!" })
# require "faker"
# 10.times do
#   Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title, age: rand(13..89), gender: "F", movie_id: rand(1..3))
# end

# 20.times do
#   Movie.create(title: FFaker::Movie.title, year: rand(1972..2020), plot: FFaker::Lorem.paragraph, director: FFaker::Name.name)
# end

# Genre.create(name: "thriller")
# Genre.create(name: "romcom")
# Genre.create(name: "horror")
# Genre.create(name: "mystery")
# Genre.create(name: "allegorical novel")
# Genre.create(name: "historical")
# Genre.create(name: "fantasy")
# Genre.create(name: "crime")
# Genre.create(name: "animation")
# Genre.create(name: "western")
# Genre.create(name: "children's")
# 1	thriller	2021-03-14 22:56:01.845543	2021-03-14 22:56:01.845543
# 2	romcom	2021-03-14 22:56:01.894179	2021-03-14 22:56:01.894179
# 3	horror	2021-03-14 22:56:01.908556	2021-03-14 22:56:01.908556
# 4	mystery	2021-03-14 22:56:01.911861	2021-03-14 22:56:01.911861
# 5	allegorical novel	2021-03-15 01:02:52.334056	2021-03-15 01:02:52.334056
# 6	historical	2021-03-15 01:02:52.339398	2021-03-15 01:02:52.339398
# 7	fantasy	2021-03-15 01:02:52.35449	2021-03-15 01:02:52.35449
# 8	crime	2021-03-15 01:02:52.358494	2021-03-15 01:02:52.358494
# 9	animation	2021-03-15 01:02:52.362486	2021-03-15 01:02:52.362486
# 10	western	2021-03-15 01:02:52.365553	2021-03-15 01:02:52.365553
