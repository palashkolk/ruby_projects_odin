# module Speak
#   def speak(sound)
#     puts "#{sound}"
#   end
# end

class GoodDog
  DOG_YEARS=7
  attr_accessor :name, :weight, :height, :age

  @@number_of_dogs=0

  def initialize(n, h, w, a)
    @name=n
    self.age=a*DOG_YEARS
    @height=h
    @weight=w
    @@number_of_dogs+=1
  end
  
  # include Speak
  def speak
    "#{name} says Arf!"
  end

  def change_info(n, h, w, a)
    self.name=n
    self.height=h
    self.weight=w
    self.age=a*DOG_YEARS
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall and #{age} years old"
  end

  def self.what_am_i
    "I'm a GoodDog class"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years"
  end
end

# class HumanBeing
#   include Speak
# end

sparky=GoodDog.new("sparky", "12 inches", "10 lbs", 1)
puts sparky.speak
puts sparky.name

puts sparky.info 
sparky.change_info('Spartacus', '24 inches', '45 lbs', 0.5)
puts sparky.info
# puts sparky.name= "Spartacus"
puts sparky.name
# sparky.speak("woof!")
fido =GoodDog.new("fido", "18 inches", "15 lbs", 2)
puts fido.speak
puts GoodDog.what_am_i
puts GoodDog.total_number_of_dogs
GoodDog.new("Kanu", "125inches", "20 lbs", 1.5)
puts GoodDog.total_number_of_dogs
puts "#{fido.name} is #{fido.age} years old" 
puts sparky #equivalent to puts sparky.to_s



# bob=HumanBeing.new
# bob.speak("Hello!")
# puts "-------GoodDog ancestor-----------"
# puts GoodDog.ancestors
# puts ""
# puts "-------HumanBeing ancestor-----------"
# puts HumanBeing.ancestors