class Mutations::CreateUser < Mutations::BaseMutation

    argument :id, ID, null: false
    argument :username, String, null: false
    argument :password, String, null: false
    argument :first_name, String, null: false
    argument :last_name, String, null: false
  
    field :user, Types::UserType, null: false
    field :errors, [String], null: false
  
    def resolve(username: , password:,first_name: , last_name:)
      user = User.new(username: username, password: password, first_name: first_name, last_name: last_name)
      if user.save
        # Successful creation, return the created object with no errors
        {
          user: user,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end