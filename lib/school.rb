# code here!

class School
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end

  def add_student(name,grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end
  
 
  def sort 
    sorted = {} 
    roster.each do |grade, name|
    sorted[grade] = name.sort
    end
    sorted
  end

end
