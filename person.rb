class Person
  # shorthand getter and setter for both name and age
  attr_accessor :name, :age

  #  Getter for id
  attr_reader :id

  def initialize(id, age, name: 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

alaye = Person.new(20, 9, name: 'toke')
ogbeni = Person.new(10, 9, name: 'toke', parent_permission: false)

# this will be true because i didn't specify parental permission
p alaye.can_use_services?

# this will be false because i specify parental permission
p ogbeni.can_use_services?
