# User.create!(
#   first_name: "wajid",
#   last_name: "kagzi",
#   email: "admin1@gmail.com",
#   username: "admin1",
#   password: "password",
#   password_confirmation: "password",
#   city: "Toronto",
#   country: "Canada"
# )

# User.create!(
#   first_name: "wajid",
#   last_name: "kagzi",
#   email: "admin2@gmail.com",
#   username: "admin2",
#   password: "password",
#   password_confirmation: "password",
#   city: "Toronto",
#   country: "Canada"
# )

# 20.times do
#   Event.create!(
#     event_name: ["Big Balloons","King Ballers","Painting","Sweet Street"][rand(0..3)],
#     address_1: rand(100..500),
#     address_2: ["Front Street","King Street","John Street","Adelaide Street"][rand(0..3)],
#     city: ["Toronto","Mississauga","Hamilton","Etobicoke"][rand(0..3)],
#     country: "Canada",
#     z_post_code: "L5",
#     number_of_attendees:rand(2..8),
#     time: DateTime.now + rand(4..9).days,
#     description: Faker::Company.bs,
#     cost: rand(0..50),
#     image: "image",
#     user_id: rand(1..2)
#   )
# end



########## PRESENTATION SEEDS ##########

# 106.times do
#   Event.create!(
#     event_name: Faker::Lorem.word,
#     address_1: rand(100..500),
#     address_2: Faker::Address.street_address,
#     city: Faker::Address.city,
#     country: Faker::Address.country,
#     z_post_code: Faker::Address.postcode,
#     number_of_attendees:rand(2..8),
#     time: DateTime.now + rand(4..9).days,
#     description: Faker::Company.bs,
#     cost: rand(0..50),
#     image: "image",
#     user_id: rand(1..106);
#   )
# end

# User.create!(
#   first_name: "wajid",
#   last_name: "kagzi",
#   email: "admin2@gmail.com",
#   username: "admin2",
#   password: "password",
#   password_confirmation: "password",
#   city: "Toronto",
#   country: "Canada"
# )



############### PRESENTATIONS ##############

User.create!(
  first_name: "Darth",
  last_name: "Vader",
  email: "dvader@theforce.com",
  username: "dvader",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "I live on the Dark Side...of the Moon.",
  interests: "Lightsabers, ventriloquism, black clothes.",
)

User.create!(
  first_name: "Lord",
  last_name: "Voldemort",
  email: "lvoldemort@slitherine.com",
  username: "lvoldemort",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "Trying to be a good guy.",
  interests: "Snakes, magic and wizardry."
)

User.create!(
  first_name: "Hannial",
  last_name: "Lecter",
  email: "hannibal@cannibal.com",
  username: "hannibal",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "I love a good meal.",
  interests: "Drawing, reading, poetry."
)

User.create!(
  first_name: "The",
  last_name: "Joker",
  email: "joker@gotham.com",
  username: "joker",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "Trying to be taken seriously.",
  interests: "Card tricks, facepainting and bats."
)

User.create!(
  first_name: "King",
  last_name: "Joffrey",
  email: "king@ofthenorth.com",
  username: "joffrey",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "I want to sit on the Iron Throne.",
  interests: "Older women, head chopping, fancy clothes."
)







User.create!(
  first_name: "Ben",
  last_name: "Kenobi",
  email: "ben@jedi.com",
  username: "luke",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "These are not the droids you're looking for.",
  interests: "Lightsabers, hoodies, teaching."
)

User.create!(
  first_name: "Tyler",
  last_name: "Durden",
  email: "tyler@fighting.com",
  username: "tyler",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "Let the chips fall where they may.",
  interests: "Fighting, soap and red jackets."
)

User.create!(
  first_name: "Bruce",
  last_name: "Wayne",
  email: "bruce@gotham.com",
  username: "bruce",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "I am a very rich orphan.",
  interests: "Bats, capes, grappling hooks."
)

User.create!(
  first_name: "Rudy",
  last_name: "Ruettiger",
  email: "rudy@notredame.com",
  username: "rudy",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "I hate steel mills.",
  interests: "Football, Fighting Irish and underdog stories."
)

User.create!(
  first_name: "Matt",
  last_name: "Damon",
  email: "matt@damon.com",
  username: "matt",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada",
  bio: "How do you like them apples?",
  interests: "Math equations, casinos, Patriots."
)





# Event.create!(
#   event_name: "Destroy Alderaan",
#   address_1: "277-285 Simcoe Street",
#   city: "Toronto",
#   number_of_attendees: 4,
#   time: "Wed, 10 2015 16:00:00",
#   description: "Looking for love in Alderaan places.",
#   image: "image",
#   user_id: 1
# )

# Event.create!(
#   event_name: "Sorcery Tournament",
#   address_1: "214 College Street",
#   city: "Toronto",
#   number_of_attendees: 3,
#   time: "Tue, 09 2015 15:00:00",
#   description: "Battle it out with different magic tricks.",
#   image: "image",
#   user_id: 2
# )

# Event.create!(
#   event_name: "Potluck Dinner",
#   address_1: "132 Denison Avenue",
#   city: "Toronto",
#   number_of_attendees: 2,
#   time: "Tue, 09 2015 20:00:00",
#   description: "Bring your own guest to feast for dinner.",
#   image: "image",
#   user_id: 3
# )

# Event.create!(
#   event_name: "Stand Up Comedy Night",
#   address_1: "464 Sherbourne Street",
#   city: "Toronto",
#   number_of_attendees: 9,
#   time: "Wed, 10 2015 13:00:00",
#   description: "Let's put a smile on that face.",
#   image: "image",
#   user_id: 4
# )

# Event.create!(
#   event_name: "Speech Practice",
#   address_1: "175 Spadina Road",
#   city: "Toronto",
#   number_of_attendees: 1,
#   time: "Wed, 10 2015 15:00:00",
#   description: "Need a partner to help me speak in public.",
#   image: "image",
#   user_id: 5
# )



# Event.create!(
#   event_name: "Study the Force",
#   address_1: "89 Oakwood Avenue",
#   city: "Toronto",
#   number_of_attendees: 3,
#   time: "Wed, 10 2015 19:00:00",
#   description: "I need a brush up on my mind tricks.",
#   image: "image",
#   user_id: 6
# )


# Event.create!(
#   event_name: "Boxing Practice",
#   address_1: "170 Delaware Avenue",
#   city: "Toronto",
#   number_of_attendees: 3,
#   time: "Wed, 10 2015 18:15:00",
#   description: "Looking for sparing partners.",
#   image: "image",
#   user_id: 7
# )

# Event.create!(
#   event_name: "Bat Watching",
#   address_1: "100 Howard Street",
#   city: "Toronto",
#   number_of_attendees: 4,
#   time: DateTime.now + rand,
#   description: "Let's observe bats in the night.",
#   image: "image",
#   user_id: 8
# )

# Event.create!(
#   event_name: "Pick Up Football",
#   address_1: "635 Parliament Street",
#   city: "Toronto",
#   number_of_attendees: 9,
#   time: "Wed, 10 2015 11:30:00",
#   description: "Let's play some football.",
#   image: "image",
#   user_id: 9
# )


# Event.create!(
#   event_name: "Apple Picking",
#   address_1: " 479 Wellington Street West",
#   city: "Toronto",
#   number_of_attendees: 6,
#   time: "Wed, 10 2015 12:15:00",
#   description: "How do you like them apples?",
#   image: "image",
#   user_id: 10
# )
