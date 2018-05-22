class School
  def initialize()
    @students = []
    @grades = []
  end
  def add(name,grade)
    student = Student.new(name,grade)
    @students << student if !@students.find {|student| student.name == name}
    @grades << grade if !@grades.include?(grade)
  end
  def students(grade)
    @students
      .select {|student| student.grade == grade}
      .sort_by {|student| student.name}
      .map { |student|  student.name}
  end
  def students_by_grade
    @grades.sort.map{ |grade| { grade: grade, students: students(grade) } }
  end
end
class Student
  attr_accessor :name, :grade
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end
module BookKeeping
  VERSION = 3
end