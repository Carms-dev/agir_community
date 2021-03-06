class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :nickname, uniqueness: true

  has_one_attached :photo, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :saves, dependent: :destroy
  has_many :comments, dependent: :destroy
end
