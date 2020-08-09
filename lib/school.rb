class School 
    attr_accessor
    attr_reader :school, :roster
    
    def initialize(school)
        @school = school
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
        new_hash = Hash.new
        @roster.each do |k,v| 
            new_hash[k] = v.sort
        end
        new_hash
    end

end