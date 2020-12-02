class ShippingAdress < ApplicationRecord
  belongs_to :purchase_record

  with_options presence: true do
    validates :postal_code
    validates :prefecture_id
    validates :city 
    validates :house_number
    validates :building_name
    validates :phone_number
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validtes :prefecture_id, numericality: { other_than: 0 }

end
