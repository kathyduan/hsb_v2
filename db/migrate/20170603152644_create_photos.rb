class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :restaurant_id
      t.string :image_url
      t.text :caption

      t.timestamps

    end
  end
end
