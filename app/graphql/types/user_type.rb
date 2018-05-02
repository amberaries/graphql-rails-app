module Types
  UserType = GraphQL::ObjectType.define do
    name "User"
    description "a user"
    field :id, !types.ID
    field :emailAddress, !types.String, property: :email
  end
end