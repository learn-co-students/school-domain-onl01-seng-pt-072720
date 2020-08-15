class School
    attr_accessor :roster 
    
    def initialize(school)
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