FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    first_name            {Faker::Name.initials(number: 2)}
    last_name             {Faker::name.initials(number: 2)}
    first_name_kana       {Faker::name.initials(naumber: 2)}
    last_name_kana        {Faker::name.initials(naumber: 2)}
    birthday              {Faker::Date.backward}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
  end
end