# exercise7.rb

class Student
  attr_accessor :name, :grade
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new("Joe", 100)
bob = Student.new("Bob", 50)
puts "Well done!" if joe.better_grade_than?(bob)