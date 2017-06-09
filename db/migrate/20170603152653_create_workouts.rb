class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :workout_type
      t.string :address
      t.integer :neighborhood_id
      t.float :hsb_rating
      t.text :notes
      t.string :studio_name

      t.timestamps

    end
  end
end
