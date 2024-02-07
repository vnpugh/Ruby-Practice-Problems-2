#write test

require 'minitest/autorun'
require_relative 'enhanced_car'
require_relative 'garage'

class CarTest < Minitest::Test
    def setup
        @garage = Garage.new
        @car1 = Car.new("Ford", "Mustang", "Blue")
        @car2 = Car.new("Toyota", "Corolla", "Blue")
        @car3 = Car.new("Lexus", "UX", "Silver")
        @car4 = Car.new("Chevy", "Silverado", "Black")
    end

    def test_add_car
        @garage.add_car(@car1)
        #Passes if collection includes object
        assert_includes @garage.instance_variable_get(:@cars), @car1
    end
    
    def test_remove_car
        @garage.add_car(@car1)
        @garage.remove_car("Ford", "Mustang")
        #Fails if collection includes object
        refute_includes @garage.instance_variable_get(:@cars), @car1
    end
    
    def test_find_cars_by_color
        @garage.add_car(@car1)
        @garage.add_car(@car2)
        @garage.add_car(@car3)
        @garage.add_car(@car4)
        blue_cars = @garage.find_cars_by_color("Blue")
        assert_equal 2, blue_cars.size
        assert_includes blue_cars, @car1
        assert_includes blue_cars, @car2
    end
    
    def test_clear_garage
        @garage.add_car(@car1)
        @garage.add_car(@car2)
        @garage.clear_garage
        assert_empty @garage.instance_variable_get(:@cars)
    end
    
  
      # return a string for testing purposes
      def test_list_cars
        @garage.add_car(@car2)

        output = capture_io { @garage.list_cars }.first
        assert_includes output, "Toyota"
        assert_includes output, "Corolla"
        assert_includes output, "Red"
      end
    end


    #Output -> 5 runs, 7 assertions, 0 failures, 0 errors, 0 skips