class CreateUserFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :user_favorites do |t|
      t.integer :user_id
      t.string :doctor_fn
      t.string :doctor_ln
      t.string :gender
      t.string :bio
      t.float :location_lat
      t.float :location_long
      t.string :location_name
      t.string :location_street
      t.string :location_city
      t.string :location_state
      t.integer :location_zip
      t.string :rating
      t.string :review

      t.timestamps
    end
  end
end
