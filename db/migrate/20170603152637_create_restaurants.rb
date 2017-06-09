class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :cuisine
      t.string :address
      t.integer :neighborhood_id
      t.float :hsb_rating
      t.text :notes
      t.string :name
      t.string :restaurant_name

      t.timestamps

    end
  end
end
