class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :user_id
      t.integer :price
      t.integer :floors
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :description

      t.timestamps
    end
  end
end
