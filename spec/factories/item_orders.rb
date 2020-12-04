FactoryBot.define do
  factory :item_order do
    
    postal_code { '123-4567'}
    prefecture_id { 1 }
    city { '大阪府 '}
    house_number { '1-1' } 
    phone_number { '0807777777' }

    
  end
end
