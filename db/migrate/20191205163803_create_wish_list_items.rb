class CreateWishListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wish_list_items do |t|
      t.integer :wish_list_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
