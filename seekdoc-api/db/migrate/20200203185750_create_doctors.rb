class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :bio
      t.float :location_lat
      t.float :location_long
      t.string :location_name
      t.string :location_street
      t.string :location_city
      t.string :location_state
      t.integer :location_zip

      t.timestamps
    end
  end
end
