FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    phone_number Faker::Number.number(10)
    country_code Faker::Number.number(2)
  end
end
