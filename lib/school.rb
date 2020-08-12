# code here!
class School
    attr_reader :name, :student, :grade
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(grade)
        roster.detect do |k,v|
            if k == grade
                return v
            end
        end
    end

    def sort
        sorted_students = {}
        roster.each do |k,v|
            sorted_students[k] = v.sort
        end
        sorted_students
    end

end