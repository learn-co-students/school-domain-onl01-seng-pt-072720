require 'pry'

class School

attr_accessor :roster, :name, :school


  def initialize(name)
    @name = name
    @roster = {}
    @school = {}
  end

  def add_student(name, grade)
  if @roster[grade]
    @roster[grade].push(name)
    else
      @roster[grade] = []
      @roster[grade].push(name)
    end

end

    def grade (grade)
      @roster[grade]
    end
def sort
  sorted = {}
  @roster.each do |grade, students_array|
    sorted[grade] = students_array.sort
end
sorted
end


end
