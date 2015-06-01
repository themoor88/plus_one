User.create!(
  first_name: "wajid",
  last_name: "kagzi",
  email: "admin1@gmail.com",
  username: "admin1",
  password: "password",
  password_confirmation: "password",
  city: "Toronto",
  country: "Canada"
)

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

20.times do
  Event.create!(
    event_name: Faker::Company.catch_phrase,
    address_1: rand(100..500),
    address_2: ["Front Street","King Street","John Street","Adelaide Street"][rand(0..3)],
    city: ["Toronto","Mississauga","Hamilton","Etobicoke"][rand(0..3)],
    country: "Canada",
    z_post_code: "L5",
    number_of_attendees:rand(2..8),
    time: DateTime.now + rand(4..9).days,
    description: Faker::Company.bs,
    cost: rand(0..50),
    image: "image",
    user_id: rand(1..2)
  )
end

# 100.times do
#   Event.create!(
#     event_name: Faker::Company.catch_phrase,
#     address_1: Faker::Address.street_address,
#     address_2: Faker::Address.secondary_address,
#     city: Faker::Address.city,
#     country: Faker::Address.country,
#     z_post_code: Faker::Address.postcode,
#     latitude: Faker::Address.latitude,
#     longitude: Faker::Address.longitude,
#     number_of_attendees:rand(2..8),
#     time: DateTime.now + rand(4..9).days,
#     description: Faker::Company.bs,
#     cost: rand(0..50),
#     image: "image",
#     category: ["Art", "Electrical", "Machine"][rand(0..2)]
#   )
# end

# Event.create!(
#     event_name: Faker::Company.catch_phrase,
#     address_1: Faker::Address.street_address,
#     address_2: Faker::Address.secondary_address,
#     city: Faker::Address.city,
#     country: Faker::Address.country,
#     z_post_code: Faker::Address.postcode,
#     latitude: 43.646824,
#     longitude: -79.385762,
#     number_of_attendees: 5,
#     time: DateTime.now + 4.days,
#     description: Faker::Company.bs,
#     cost: 30,
#     image: "image",
#     category: "Art"
#   )
