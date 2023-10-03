require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(id, age, name: 'Unknown', parent_permission: true, specialization: 'Unknown')
    super(id, age, name: name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def can_use_services?
    true
  end
end

oluko = Teacher.new(1, 9, name: 'Alice', parent_permission: false, specialization: 'Math')
puts oluko.name
puts oluko.age
puts oluko.specialization
puts oluko.can_use_services?
