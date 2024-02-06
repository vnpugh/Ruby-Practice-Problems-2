#Create a Ruby program that performs the following tasks using inheritance:

#Define a class called 'Animal' that takes a name as an argument.
#Define a method called 'speak' that prints the name of the animal.

#Define a class called 'Dog' that inherits from the 'Animal' class.
#Create an instance of the 'Dog' class called 'dog'.
#Call the 'speak' method on the 'dog' instance.

#Define a class called 'Cat' that inherits from the 'Animal' class.
#Create an instance of the 'Cat' class called 'cat'.
#Call the 'speak' method on the 'cat' instance.

class Animal
    def initialize(name)
        @name = name
    end

    def speak
        puts @name
    end
end

class Dog < Animal
    end

class Cat < Animal
    end

#Create an instance
dog = Dog.new("dog")
#Call
dog.speak

cat = Cat.new("cat")
cat.speak