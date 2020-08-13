require 'pry' 

class School
  attr_accessor :school
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end   
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << "#{name}" 
  end   
  
  def grade(grade_num)
    roster[grade_num] 
  end   
  
  def sort
    sorted_roster = {}
    roster.each do |grade, name|
      sorted_roster[grade] = name.sort
    end
    sorted_roster
  end 
  
end   