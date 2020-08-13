# code here!

class School

attr_accessor :school, :roster

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted = {}
    @roster.each do |grades, students|
      sorted[grades] = students.sort
    end
    sorted
  end

end
