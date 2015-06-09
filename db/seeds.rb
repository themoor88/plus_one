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

106.times do
  Event.create!(
    event_name: Faker::Lorem.word,
    address_1: rand(100..500),
    address_2: Faker::Address.street_address,
    city: Faker::Address.city,
    country: Faker::Address.country,
    z_post_code: Faker::Address.postcode,
    number_of_attendees:rand(2..8),
    time: DateTime.now + rand(4..9).days,
    description: Faker::Company.bs,
    cost: rand(0..50),
    image: "image",
    user_id: rand(1..106);
  )
end

User.create!(
  first_name: "wajid",
  last_name: "kagzi",
  email: "admin2@gmail.com",
  username: "admin2",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada"
)