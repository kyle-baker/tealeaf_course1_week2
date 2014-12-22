# exercise1.rb 

class MyCar
  attr_accessor :color
  attr_reader :year
  
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
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
    puts "Spray down complete, your car is now #{color}! Nice!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

mazda = MyCar.new(2011, 'Mazda 3', 'black')
MyCar.gas_mileage(14,284)
