class Animal
  attr_accessor :id, :name, :num_of_legs, :type

  def initialize(type, num_of_legs, name = 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @num_of_legs = num_of_legs
    @type = type
  end

  def speak
    'grrrr...'
  end
end

animal = Animal.new('dog', 4, 'stick')

# Set properties using the setter method
p animal.name
p animal.name = 'fluffy'
p animal.id
p animal.type
p animal.speak
