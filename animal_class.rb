# Create a Ruby program that performs the following tasks using classes and objects:

# Define a class called 'Animal' that takes a name as an argument.
# Define a method called 'speak' that prints the name of the animal.
# Create an instance of the Animal class called 'dog'.
# Call the 'speak' method on the 'dog' instance.

class Animal
    def initialize(name)
        @name = name
    end

    def speak
        puts @name
    end

end

# Call
zebra = Animal.new("zebra")
zebra.speak 

# Output -> zebra
