class WishList < ApplicationRecord
    has_many :listings, through: :user
    belongs_to :user
end