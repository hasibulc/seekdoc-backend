class Mutations::CreateDoctor < Mutations::BaseMutation

  argument :first_name, String, required: false
  argument :last_name, String, required: false
  argument :gender, String, required: false
  argument :bio, String, required: false
  argument :location_lat, Float, required: false
  argument :location_long, Float, required: false
  argument :location_name, String, required: false
  argument :location_street, String, required: false
  argument :location_city, String, required: false
  argument :location_state, String, required: false
  argument :location_zip, Integer, required: false

  field :doctor, Types::DoctorType, null: false
  field :errors, [String], null: false

  def resolve(first_name:, last_name:, gender:, bio:, location_lat:, location_long:, location_name:, location_street:, location_city:, location_state:, location_zip:)

    doctor = Doctor.new(first_name: first_name, last_name: last_name, gender: gender, bio: bio, location_lat: location_lat, location_long: location_long, 
                        location_name: location_name, location_street: location_street, location_city: location_city, location_state: location_state, 
                        location_zip: location_zip)

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