class Item < ApplicationRecord
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :delivery_fee
  belongs_to :days_to_ship

  validates :title, text, presence: true

  validates :category_id, numericality: { other_than: 1 }
  validates :status_id numericality: { other_than: 1}
  validates :delivery_fee_id, numericality: { other_than: 1 }
  validates :dats_to_ship_id, numericality: { other_than: 1 } 
end
