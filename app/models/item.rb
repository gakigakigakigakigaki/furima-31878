class Item < ApplicationRecord
  has_one_attached :image
  
  with_options presence: true do
    validates :product_name
    validates :price, format: { with:/\A[0-9]+\z/}
    validates :status_id
    validates :description
    validates :catebory_id
    validates :prefecture_id
    validates :days_to_ship_id
    validates :delivery_fee_id
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :delivery_fee
  belongs_to :days_to_ship
  belongs_to :prefecture


  validates :category_id, numericality: { other_than: 0 }
  validates :status_id, numericality: { other_than: 0 }
  validates :delivery_fee_id, numericality: { other_than: 0 }
  validates :dats_to_ship_id, numericality: { other_than: 0 }
  validates :prefecture_id, numericality: { other_than: 0 }  
end
