Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(root, args, ctx) {
      "Hello World!"
    }
  end

  field :first, Types::UserType do
    description "Returns first email"
    resolve ->(root, args, ctx) {
      User.first
    }
  end

  field :second, Types::UserType do
    description "Returns second email"
    resolve ->(root, args, ctx) {
      User.last
    }
  end

  field :books, types[Types::BookType] do
    description "Get books stuff"
    resolve ->(root, args, ctx) {
      Book.all
    }
  end
end
