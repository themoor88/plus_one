User.create!(
    first_name: "admin",
    last_name: "admin",
    email: "admin@gmail.com",
    username: "admin1",
    password: "password",
    password_confirmation: "password"
)

100.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Internet.user_name,
    password: "123456789",
    password_confirmation: "123456789"
  )
end

100.times do
  Event.create!(
    event_name: Faker::Company.catch_phrase,
    address_1: Faker::Address.street_address,
    address_2: Faker::Address.secondary_address,
    city: Faker::Address.city,
    country: Faker::Address.country,
    z_post_code: Faker::Address.postcode,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    number_of_attendees:rand(2..8),
    time: DateTime.now + rand(4..9).days,
    description: Faker::Company.bs,
    cost: rand(0..50),
    image: "image",
    category: ["Art", "Electrical", "Machine"][rand(0..2)]
  )
end