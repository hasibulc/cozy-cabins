class DropListingIdFromWishlists < ActiveRecord::Migration[6.0]
  def change
    remove_column(:wish_lists, :listing_id)
  end
end
