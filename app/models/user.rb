class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :email,    presence: true, format: { with: /\A\S+@\S+\.\S+\z/}
  validates :encrypted_password, presence: true, format: { with: /\A[a-z0-9]+\z/}
  validates :birthday, presence: true
  validates :first_name, presence: true, format: { with:/\A[ぁ-んァ-ン一-龥]/}
  validates :last_name, presence: true, format: { with:/\A[ぁ-んァ-ン一-龥]/}
  validates :first_name_kana, presence: true, format: { with:/\A[ァ-ヶー－]+\z/}
  validates :last_name_kana, presence: true, format: { with:/\A[ァ-ヶー－]+\z/}
 
  has_many :purchases_records
  has_many :item
end
