module Types
  BookType = GraphQL::ObjectType.define do
    name "Book"
    description "a book"

    field :id, !types.Int
    field :title, !types.String do
      resolve -> (book, args, ctx) {
        book.user.email + "-" + book.title
      }
    end
  end
end
