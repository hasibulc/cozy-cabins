class CreateWishLists < ActiveRecord::Migration[6.0]
  def change
    create_table :wish_lists do |t|
      t.integer :user_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
