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

    def all_users
      User.all
    end

    # User Favorite Queries
    field :all_user_favorite, [Types::UserFavoriteType], null: false

    def all_user_faveorite
      UserFavorite.all
    end

    field :user_favorite, [Types::UserFavoriteType], null: false do
      argument :user_id, Integer, required: true
    end

    def user_favorite(id:)
      UserFavorite.find(id)
    end

  end
end
