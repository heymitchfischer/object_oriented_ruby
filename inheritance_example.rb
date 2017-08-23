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

  def initialize
    super

    @fuel = "gasoline"
    @make = "Honda"
    @model = "Accord"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :color

  def initialize
    super

    @color = "red"
    @weight = "80 lbs"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new 
bike = Bike.new

car.accelerate
bike.accelerate

car.honk_horn
bike.ring_bell

p car.fuel
p bike.color