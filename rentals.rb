require_relative book

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  # update the rental array in book
  book.rentals << self

  # update the person array in book
  person.rentals << self
end
