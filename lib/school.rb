class School
  attr_reader :name, :grade, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @name = name 
    @grade = grade
    if @roster[grade] != nil  
      @roster[grade] << name 
    else 
      @roster[grade] = [] 
      @roster[grade] << name 
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    sorted_roster = {}
    @roster.each do |grade, roster|
      sorted_roster[grade] = roster.sort 
    end
    sorted_roster
  end
    
end