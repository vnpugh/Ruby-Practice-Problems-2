# Create a test for the 'Apple' class that tests the 'print_name' method.

require 'minitest/autorun'
require_relative 'fruit_inheritance'

class AppleTest < Minitest::Test
    def setup
      @apple = Apple.new("Fuji")
    end
  
    def test_print_name
      expected = "Fuji"
      assert_equal expected, @apple.print_name
    end
  
  end
  
  # Output -> 1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
  