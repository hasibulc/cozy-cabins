class DropTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :wishlist_items 
  end
end
