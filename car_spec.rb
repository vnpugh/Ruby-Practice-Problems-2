# Create a test for the 'Car' class that tests the 'print_color' method.
# gem install minitest

require 'minitest/autorun'
require_relative 'car_class'
 

class CarTest < Minitest::Test
  def setup
    @car = Car.new("Honda", "Accord", "red")
  end

  def test_print_color
    expected = "The Honda Accord is red."
    assert_equal expected, @car.print_color
  end

end

# Output -> 1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
