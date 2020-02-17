class Mutations::CreateUserFavorite < Mutations::BaseMutation

    argument :user_id, Integer, required: false
    argument :doctor_fn, String, required: false
    argument :doctor_ln, String, required: false
    argument :gender, String, required: false
    argument :bio, String, required: false
    argument :location_lat, Float, required: false
    argument :location_long, Float, required: false
    argument :location_name, String, required: false
    argument :location_street, String, required: false
    argument :location_city, String, required: false
    argument :location_state, String, required: false
    argument :location_zip, Integer, required: false
    argument :rating, Integer, required: false
    argument :review, String, required: false

    field :user_favorite, Types::UserFavoriteType, null: false
    field :errors, [String], null: false

    def resolve(
                user_id:,
                doctor_fn:,
                doctor_ln:,
                gender:, 
                bio:, 
                location_lat:, 
                location_long:, 
                location_name:, 
                location_street:, 
                location_city:, 
                location_state:, 
                location_zip:, 
                rating:, 
                review:
                )
    
    user_favorite = UserFavorite.new(
                                    user_id: user_id,
                                    doctor_fn: doctor_fn,
                                    doctor_ln: doctor_ln,
                                    gender: gender, 
                                    bio: bio, 
                                    location_lat: location_lat, 
                                    location_long: location_long, 
                                    location_name: location_name, 
                                    location_street: location_street, 
                                    location_city: location_city, 
                                    location_state: location_state, 
                                    location_zip: location_zip, 
                                    rating: nil || rating, 
                                    review: nil || review
                                    )


    if user_favorite.save
        # Successful creation, return the created object with no errors
        {
            user_favorite: user_favorite,
            errors: [],
        }
        else
        # Failed save, return the errors to the client
        {
            user_favorite: nil,
            errors: user_favorite.errors.full_messages
        }
        end
    end

end

