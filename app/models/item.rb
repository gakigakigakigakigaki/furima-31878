class Item < ApplicationRecord
  has_one_attached :image
  has_one :purchase_record
  belongs_to :user

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

  with_options numericality: { other_than: 0 } do
  validates :category_id
  validates :status_id
  validates :delivery_fee_id
  validates :days_to_ship_id
  validates :prefecture_id
  end 
end
