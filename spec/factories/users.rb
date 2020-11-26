FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 6)}
    email                 {Faker::Internet.free_email}
    first_name            {'承太郎'}
    last_name             {'空条'}
    first_name_kana       {'ジョウタロウ'}
    last_name_kana        {'クウジョウ'}
    birthday              {Faker::Date.backward}
    password              {Faker::Internet.password}
    password_confirmation {password}
  end
end