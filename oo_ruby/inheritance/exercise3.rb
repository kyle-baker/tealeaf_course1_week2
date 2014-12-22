# exercise3.rb 
module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color, :year, :model
  @@number_of_vehicles = 0

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize(year, model, color)
    @@number_of_vehicles += 1
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph"
  end

  def shut_down
    @current_speed = 0
    puts "You slam the breaks"
  end

  def spray_paint(color)
    self.color = color
    puts "Spray down complete, your vehicle is now #{color}! Nice!"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "This car is a #{color} #{model} made in #{year}."
  end

end

class MyTruck < Vehicle
  include Towable 

  NUMBER_OF_DOORS = 2

  def to_s
    "This truck is a #{color} #{model} made in #{year}."
  end
end

car = MyCar.new('2011', 'Mazda 3', 'Black')
truck = MyTruck.new('2008', 'Nissan Frontier', 'Grey')

puts car
puts truck

puts Vehicle.total_number_of_vehicles

puts truck.can_tow?(3800)