class Listing < ApplicationRecord
    belongs_to :user
    # belongs_to :wish_list
    # belongs_to :user through :wish_list
end