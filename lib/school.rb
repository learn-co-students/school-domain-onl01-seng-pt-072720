# code here!
class School
  

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  
  def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name 
    end 
  
  def grade(grade)
    @roster[grade] 
  end 
 
 def sort
        @new_hash = { }
        @roster.each do |grade, array_of_student_names| 
            @new_hash[grade] = array_of_student_names.sort 
        end 
        @new_hash 
    end
end 
 
 
# def sort
#         @new_hash = { }
#         @roster.each do |grade, array_of_student_names| 
#           #add grade key to @new_hash with value of sorted student names

#         end 
#         @new_hash 
#     end


# create a new hash before the loop and inside of the loop add each grade key to that new hash





