require 'faker'
Faker::Config.locale = "en-CA"

10.times do
    Restaurant.create(name: Faker::Restaurant.name, city: "Waterloo", country: "Canada", genre: Faker::Restaurant.type, phone_num: Faker::PhoneNumber.cell_phone)
end

10.times do
    Restaurant.create(name: Faker::Restaurant.name, city: "Toronto", country: "Canada", genre: Faker::Restaurant.type, phone_num: Faker::PhoneNumber.cell_phone)
end

10.times do
    Restaurant.create(name: Faker::Restaurant.name, city: "Vaughan", country: "Canada", genre: Faker::Restaurant.type, phone_num: Faker::PhoneNumber.cell_phone)
end