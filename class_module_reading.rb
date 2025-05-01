class Engine
  def start
    puts "Engine is starting"
  end
end

class Passenger
  def initialize(something)
    @say=something
  end

  def say
    puts "#{@say}"
  end
end

class Car
  # Container "has -a" composed object and also "has-an" aggregated object.
  def initialize(passengers)
    @engine=Engine.new   #composed object, Engine dies with Car and is created with Car
    @passengers=passengers  # Aggregated object, Passenger lives independently even if Car dies

  end

  def start
    @engine.start
  end

  def board
    @passengers.each do |passenger|
      passenger.say
    end
  end
end

passengers=[Passenger.new("I am in!"), Passenger.new("I am also in!")]
my_car=Car.new(passengers)
my_car.start
my_car.board