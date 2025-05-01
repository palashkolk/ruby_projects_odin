class MyCar
  attr_accessor :color, :model
  attr_reader :year
  
  def initialize (y, c, m)
    @year=y
    @color=c
    @model=m   
    @current_speed=0
  end

  def speed_up(speed)
    @current_speed+=speed
    puts "You are accelerating and the current speed is set to #{@current_speed}"
  end

  def brake(speed)
    @current_speed-=speed
    puts "You are applying brake and the current speed is set to #{@current_speed}"
  end

  def shut_off
    @current_speed=0
    puts "Engine is being switched off"
  end

  def spray_paint(color1)
    self.color=color1
    "Your car is now #{color} coloured"
  end
end

my_car=MyCar.new(2018, "cherry", "Hyundai Santro")

puts my_car.speed_up(30)
puts my_car.speed_up(10)
puts my_car.brake(10)
puts my_car.shut_off
puts my_car.spray_paint("Orange")
puts my_car.year
puts my_car.color
puts my_car.model
my_car.model="Hyundai Grand i10"
puts my_car.model
my_car.year=2013
puts my_car.year