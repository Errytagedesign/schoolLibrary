require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(id, age, name: 'Unknown', parent_permission: true, classroom: 'Unknown')
    super(id, age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

student = Student.new(1, 16, name: 'Alice', parent_permission: false, classroom: 'High School')
puts student.name # Output: Alice
puts student.age # Output: 16
puts student.classroom # Output: High School
puts student.can_use_services? # Output: true (inherits from Person class)
