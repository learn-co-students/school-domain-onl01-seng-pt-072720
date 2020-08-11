class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def name
    @name
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @name
    @grade
    if roster.include?(grade) 
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster
    @grade
    roster[grade]
  end
  
  def sort
    roster.each_value { |name| name.sort! }
  end
  
end