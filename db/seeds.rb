user1 = User.create!(name: 'Laina', email: 'flint@aol.com', friends_email: 'huy2@aol.com', password: 'flint')
user2 = User.create!(name: 'Zooey', email: 'jackson@aol.com', friends_email: 'huy2@aol.com', password: 'jackson')
user3 = User.create!(name: 'Tina', email: 'max@aol.com', friends_email: 'huy2@aol.com', password: 'max')
user4 = User.create!(name: 'Kim', email: 'steven@aol.com', friends_email: 'huy2@aol.com', password: 'steven')
user5 = User.create!(name: 'Paulette', email: 'flint@aol.com', friends_email: 'huy2@aol.com', password: 'flint')
user6 = User.create!(name: 'Huy', email: 'huy@aol.com', friends_email: 'huy2@aol.com', password: 'huy')

Profile.create!(age: 24, height: "5'7\"", short_bio: "Fooooooodddd!", interests: "Coffee, Hiking, Instagram", user_id: 1, first_quality: "Best cook in the world!", second_quaity: "Super organized with everything", third_quality: "Always on time")
Profile.create!(age: 28, height: "5'4\"", short_bio: "I am an active woman", interests: "Bowling, Sailing, Guns", user_id: 2)
Profile.create!(age: 38, height: "5'2\"", short_bio: "A whirlwind of energy", interests: "Music, Arts, Poems", user_id: 3)
Profile.create!(age: 14, height: "5'10\"", short_bio: "I like stuff", interests: "Money, Cars, Watches", user_id: 4)
Profile.create!(age: 54, height: "6'0\"", short_bio: "One with nature", interests: "Fun, Antiques, Beaches", user_id: 5)
Profile.create!(age: 19, height: "5'10\"", short_bio: "A regular guy", interests: "Karate, MMA, Hiking", user_id: 6, first_quality: "Nicest guy in the world", second_quaity: "Super awesome", third_quality: "loves portillos")

user2.send_message(user6, "Whats up dude!", "Yolo")
user3.send_message(user6, "What are you up to?", "??")
user4.send_message(user6, "Why are the birds at the zoo?", ":) :)")
user1.send_message(user6, "You are a cool guy", "Hi")
