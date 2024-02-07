=begin
Create a Garage class:

1. This class will manage a collection of Car objects.
2. Implement methods to add a car, remove a car by make and model, and list all cars.
3. Add a method to find all cars of a specific color.
4. Add a method to clear all cars from the garage.
=end

class Garage
    def initialize
        @cars = []
    end

#add a car
    def add_car(car)
        @cars << car
    end

#remove a car by make and model
def remove_car(make, model)
    @cars.delete_if { |car| car.make == make && car.model == model }
    end

#list all cars
def list_cars
    @cars.each_with_index do |car, index|
      puts "#{index + 1}. Make: #{car.make}, Model: #{car.model}, Color: #{car.color}"
    end
end

#find all cars of a specific color
def find_cars_by_color(color)
    @cars.select { |car| car.color == color }
    end

#clear all cars from the garage
def clear_garage
    @cars.clear
    end
end

