class WishListItem < ApplicationRecord
    belongs_to :wish_list
    belongs_to :listing
    validates :listing_id, uniqueness: { scope: :wish_list_id}
    
end
