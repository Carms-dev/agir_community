class Post < ApplicationRecord
  belongs_to :space
  belongs_to :user
  has_many_attached :photos, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :saves, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :content, presence: true

end
