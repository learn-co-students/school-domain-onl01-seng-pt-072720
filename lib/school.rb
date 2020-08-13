class School
  
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort
    list = {}
    roster.each do |grade, student|
      list[grade] = student.sort
    end
    return list
  end
    
end