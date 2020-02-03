class Mutations::CreateDoctor < Mutations::BaseMutation

    argument :id, ID, null: false
    argument :first_name, String, null: false
    argument :last_name, String, null: false
    argument :gender, String, null: false
    argument :bio, String, null: false
    argument :location_lat, Float, null: false
    argument :location_long, Float, null: false
    argument :location_name, String, null: false
    argument :location_street, String, null: false
    argument :location_city, String, null: false
    argument :location_state, String, null: false
    argument :location_zip, Integer, null: false
  
    field :doctor, Types::DoctorType, null: false
    field :errors, [String], null: false
  
    def resolve(first_name: , last_name:, bio:, location_lat:, location_long:, 
                location_name:, street:, city:, state: , zip:)
      doctor = Doctor.new(first_name: first_name, last_name: last_name, bio: bio, 
                          location_lat: location_lat, location_long: location_long, 
                          location_name: location_name, street: street, city: city, state: state, zip: zip)
      if doctor.save
        # Successful creation, return the created object with no errors
        {
          doctor: doctor,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          doctor: nil,
          errors: doctor.errors.full_messages
        }
      end
    end
  end