=begin 
Define a Car class:
1. The class should initialize with a make, model, and color. 
2. Include methods to get and set each of these attributes.
3. Add a method info that returns a string with all the car's details.
=end

class Car
  
    def initialize(make, model, color)
      @make = make
      @model = model
      @color = color
    end
  
    # Getter
    def make
      @make
    end
  
    # Setter
    def make=(value)
      @make = value
    end
  
    # Getter
    def model
      @model
    end
  
    # Setter
    def model=(value)
      @model = value
    end
  
    # Getter
    def color
      @color
    end
  
    # Setter
    def color=(value)
      @color = value
    end
  
    # Method to return a string with all the car's details
    def info
      "Car Details: Make: #{@make}, Model: #{@model}, Color: #{@color}"
    end
  end
  
