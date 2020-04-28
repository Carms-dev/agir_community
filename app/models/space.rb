class Space < ApplicationRecord
    has_many :posts

    validates :name, :description, presence: true
    # validates :name, presence: { message: "must be given please" }
    # validates :description, presence: { message: "must be given please" }
end
