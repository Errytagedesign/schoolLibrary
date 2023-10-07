require_relative 'book'

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person

    # update the rental array in book
    book.rental << self

    # update the person array in book
    person.rental << self
  end
end
