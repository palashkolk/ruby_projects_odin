# module Speak
#   def speak(sound)
#     puts "#{sound}"
#   end
# end

class GoodDog
  attr_accessor :name, :weight, :height

  def initialize(n, h, w)
    @name=n
    @height=h
    @weight=w
  end
  
  # include Speak
  def speak
    "#{name} says Arf!"
  end

  def change_info(n, h, w)
    self.name=n
    self.height=h
    self.weight=w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall"
  end
end

# class HumanBeing
#   include Speak
# end

sparky=GoodDog.new("sparky", "12 inches", "10 lbs")
puts sparky.speak
puts sparky.name

puts sparky.info 
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
# puts sparky.name= "Spartacus"
puts sparky.name
# sparky.speak("woof!")
fido =GoodDog.new("fido", "18 inches", "15 lbs")
puts fido.speak


# bob=HumanBeing.new
# bob.speak("Hello!")
# puts "-------GoodDog ancestor-----------"
# puts GoodDog.ancestors
# puts ""
# puts "-------HumanBeing ancestor-----------"
# puts HumanBeing.ancestors