require_relative 'person'

class Student < Person
  def initialize(id, age, name: 'Unknown', parent_permission: true, classroom: 'Unknown')
    super(id, age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.classroom_students.push(self) unless classroom.students.include?(self)
  end
end
