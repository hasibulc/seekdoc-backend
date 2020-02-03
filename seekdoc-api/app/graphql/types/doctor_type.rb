module Types
  class DoctorType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :gender, String, null: false
    field :bio, String, null: false
    field :location_lat, Float, null: false
    field :location_long, Float, null: false
    field :location_name, String, null: false
    field :location_street, String, null: false
    field :location_city, String, null: false
    field :location_state, String, null: false
    field :location_zip, Integer, null: false
  end
end
