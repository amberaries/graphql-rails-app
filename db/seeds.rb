# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BOOKS_TITLES = 20.times.map { Faker::Book.title }

SEPARATOR = BOOKS_TITLES.length * 0.4

BOOK_USERS = {
  'anr@anadeainc.com' => BOOKS_TITLES[0, SEPARATOR],
  'gpk@anadeainc.c0m' => BOOKS_TITLES[SEPARATOR..-1]
}

BOOK_USERS.each do |email, books|
  user = User.new(email: email, password: 'secret')
  books.each { |title| user.books.build(title: title) }
  user.save
end
