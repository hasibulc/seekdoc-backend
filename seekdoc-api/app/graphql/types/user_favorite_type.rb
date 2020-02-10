module Types
  class UserFavoriteType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :doctor_fn, String, null: false
    field :doctor_ln, String, null: false
    field :gender, String, null: false
    field :bio, String, null: false
    field :location_lat, Float, null: false
    field :location_long, Float, null: false
    field :location_name, String, null: false
    field :location_street, String, null: false
    field :location_city, String, null: false
    field :location_state, String, null: false
    field :location_zip, Integer, null: false
    field :rating, Integer, null: false
    field :review, String, null: false
  end
end
