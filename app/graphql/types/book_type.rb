module Types
  BookType = GraphQL::ObjectType.define do
    name "Book"
    description "a book"

    field :id, !types.ID
    field :title, !types.String do
      resolve -> (book, args, ctx) {
        book.title + ". Genre - " + Faker::Book.genre
      }
    end

    field :user, !UserType
  end
end
