class ShippingAdress < ApplicationRecord
  belongs_to :purchase_record

  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :prefecture_id, numericality: { other_than: 0 }

end
