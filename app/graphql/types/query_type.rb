Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :users, types[Types::UserType] do
    description "Get users stuff"
    resolve ->(root, args, ctx) {
      User.all
    }
  end

  field :user do
    type Types::UserType
    description "Get the user stuff"
    argument :id, !types.ID
    resolve ->(root, args, ctx) {
      User.find(args["id"])
    }
  end

  field :books, types[Types::BookType] do
    description "Get books stuff"
    resolve ->(root, args, ctx) {
      Book.all
    }
  end

  field :book do
    type Types::BookType
    description "Get the book stuff"
    argument :id, !types.ID
    resolve ->(root, args, ctx) {
      Book.find(args["id"])
    }
  end

  field :whois do
    type Types::UserType
    description "Get current user stuff"
    resolve ->(root, args, ctx) {
      ctx[:current_user]
    }
  end

  field :mineBooks do
    type Types::UserType
    description "Get current user stuff"
    resolve ->(root, args, ctx) {
      ctx[:current_user]
    }
  end
end
