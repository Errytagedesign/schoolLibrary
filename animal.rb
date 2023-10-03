class Animal
  def initialize(type, num_of_legs, name = 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @num_of_legs = num_of_legs
    @type = type
  end
end
