FactoryBot.define do
  factory :item do
    product_name     {Faker::Name.initials(number: 6)}
    price            {7777}
    category_id      {2}
    status_id        {3}
    description      {Faker::Name.initials(number: 10)}
    prefecture_id    {1}
    days_to_ship_id  {1}
    delivery_fee_id  {1}
    
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    
  end
end
