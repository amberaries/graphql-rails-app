Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :creatBook do
    type Types::BookType
    description "Get the book stuff"
    argument :title, !types.String
    resolve ->(root, args, ctx) {
      Book.create(title: args["title"], user: ctx[:current_user])
    }
  end
end
