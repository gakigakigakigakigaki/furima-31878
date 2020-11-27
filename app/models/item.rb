class Item < ApplicationRecord
  has_one_attached :image
  
  with_options presence: true do
    validates :image
    validates :product_name
    validates :price, format: { with:/\A[0-9]+\z/}
    validates :status_id
    validates :description
    validates :category_id
    validates :prefecture_id
    validates :days_to_ship_id
    validates :delivery_fee_id
  end
    validates_numericality_of :price, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :delivery_fee
  belongs_to :days_to_ship
  belongs_to :prefecture


  validates :category_id, numericality: { other_than: 0 }
  validates :status_id, numericality: { other_than: 0 }
  validates :delivery_fee_id, numericality: { other_than: 0 }
  validates :days_to_ship_id, numericality: { other_than: 0 }
  validates :prefecture_id, numericality: { other_than: 0 }  
end
