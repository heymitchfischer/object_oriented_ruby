class Vehicle

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
    puts "Accelerating!"
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :fuel

  def initialize(input_options)
    super()

    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def initialize(input_options)
    super()

    @gear = input_options[:gear]
    @type = input_options[:color]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              fuel: "gasoline", 
              make: "Honda", 
              model: "Accord"
              )
bike = Bike.new(gear: 10,
                type: "off road",
                weight: "27 lbs"
                )

car.accelerate
bike.accelerate

car.honk_horn
bike.ring_bell

p car.fuel