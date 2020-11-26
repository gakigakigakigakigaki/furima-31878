class Item < ApplicationRecord
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status

  validates :title, text, presence: true

  validates :category_id, numericality: { other_than: 1 }
  validates :status_id numericality: { other_than: 1}
end
