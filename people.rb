  class Person

    def initialize(first_name)
      @first_name = first_name
    end

    def greeting
      puts "Hi, my name is #{@first_name}"
    end
  end

  class Student < Person

    def learn
      puts "I get it!"
    end
  end

  class Instructor < Person

    def teach
      puts "Everything in Ruby is an object"
    end

  end

chris = Instructor.new("chris")
christina = Student.new("christina")

chris.greeting
christina.greeting
chris.teach
christina.learn

#  chris.learn won't work because chris is not under the Student class - only
# the Instructor and Person classes
