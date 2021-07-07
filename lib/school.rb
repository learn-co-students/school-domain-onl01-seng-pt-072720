class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end
  
  def add_student(name, grade)
    if roster.include?(grade) 
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
    
    #roster[grade] ||= []   --> also works.If roster[grade] is an empty array, then evaluate next statement. else create empty array
    #roster[grade] << student_name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each_value { |name| name.sort! }
  end
  
end