=begin
Create a Ruby program that performs the following tasks using inheritance:

Define a class called 'Fruit' that takes a name as an argument.
Define a method called 'print_name' that prints the name of the fruit.
Define a class called 'Apple' that inherits from the 'Fruit' class.
Create an instance of the 'Apple' class called 'apple'.
Create a test for the 'Apple' class that tests the 'print_name' method.
=end

class Fruit
    def initialize(name)
        @name = name
    end

    # def print_name
       # puts @name
    # end

         # For Test - > Modify print_name method or test will return nil
         def print_name
            @name
        end
    end

class Apple < Fruit
    end

#Create an instance
apple = Apple.new("Fuji")

#Call
apple.print_name


