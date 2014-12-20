# exercise1.rb

class MyCar
  
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
end


mazda = MyCar.new(2011, 'Mazda 3', 'black')
mazda.speed_up(40)
mazda.current_speed
mazda.speed_up(20)
mazda.current_speed
mazda.brake(20)
mazda.current_speed
mazda.brake(20)
mazda.current_speed
mazda.shut_down
mazda.current_speed
