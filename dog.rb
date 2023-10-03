require './animal'

class Dog < Animal
  def initialize(color, name = 'Unknown')
    super('dog', 4, name)
    @color = color
  end

  def bring_a_stick
    'Here is your stick: ---------'
  end

  def speak
    'wof wof'
  end
end

dogs1 = Dog.new('red', 'sufo')

p dogs1.speak
p dogs1.bring_a_stick
