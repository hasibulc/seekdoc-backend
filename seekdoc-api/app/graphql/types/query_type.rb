module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    # Doctor Queries
    field :all_doctors, [Types::DoctorType], null: false

    def all_doctors
      Doctor.all
    end
  
    # User Queries
    field :all_users, [Types::UserType], null: false

    def all_doctors
      User.all
    end

  end
end
