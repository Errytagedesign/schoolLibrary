require_relative book

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  # update the book array in rentasl
  book.rentals << self

  # update the person array in rentasl
  person.rentals << self
end
