class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !roster.key?(grade)
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end
  
  def roster
    @roster
  end
  
  def grade(grade)
    roster.each do | grade1, student |
      if grade1 == grade
        return student
      end
    end
  end
  
  def sort
    roster.each do | grade, student |
      student.sort!
    end
    
    roster
  end
end