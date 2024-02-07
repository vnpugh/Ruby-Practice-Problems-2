# Create a Ruby program that performs the following tasks using classes and objects:

# Define a class called 'Car' that takes a make and model as arguments.
# Define a method called 'print_color' that prints the color of the car.
# Create an instance of the 'Car' class called 'car'.
# Create a test for the 'Car' class that tests the 'print_color' method.

class Car
    def initialize(make, model, color)
        @make = make
        @model = model
        @color = color
    end

    # def print_color
        # puts "The #{@make} #{@model} is #{@color}."
    # end

     # For Test - > Modify to return the string instead of print_color
    def print_color
        "The #{@make} #{@model} is #{@color}."
    end
end

# Car instance
car = Car.new("Honda", "Accord", "red")
car.print_color

# Output -> The Honda Accord is red.

