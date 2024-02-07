
#write test

require 'minitest/autorun'
require_relative 'enhanced_car'

class CarTest < Minitest::Test
    def setup
        @car = Car.new("Ford", "Mustang", "Blue")
    end

    def test_initialize
        assert_equal "Ford", @car.make
        assert_equal "Mustang", @car.model
        assert_equal "Blue", @car.color
    end

    def test_make_getter_and_setter
        @car.make = "Ford"
        assert_equal "Ford", @car.make
    end
    
    def test_model_getter_and_setter
        @car.model = "Mustang"
        assert_equal "Mustang", @car.model
    end
    
    def test_color_getter_and_setter
        @car.color = "Blue"
        assert_equal "Blue", @car.color
    end
    
    def test_info
        expected = "Car Details: Make: Ford, Model: Mustang, Color: Blue"
        assert_equal expected, @car.info
      end
    end


    #Output -> 5 runs, 7 assertions, 0 failures, 0 errors, 0 skips

