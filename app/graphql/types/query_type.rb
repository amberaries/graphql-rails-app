Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :first, Types::UserType do
    description "Returns first email"
    resolve ->(obj, args, ctx) {
      User.first
    }
  end

  field :second, Types::UserType do
    description "Returns second email"
    resolve ->(obj, args, ctx) {
      User.last
    }
  end
end
