# module Speak
#   def speak(sound)
#     puts "#{sound}"
#   end
# end

class GoodDog
  def initialize(name)
    @name=name
  end
  def get_name
    @name
  end

  def set_name=(name)
    @name=name
  end
  # include Speak
  def speak
    "#{@name} says Arf!"
  end
end

# class HumanBeing
#   include Speak
# end

sparky=GoodDog.new("sparky")
puts sparky.speak
puts sparky.get_name
sparky.set_name= "Spartacus"
puts sparky.get_name
# sparky.speak("woof!")
fido =GoodDog.new("fido")
puts fido.speak
# bob=HumanBeing.new
# bob.speak("Hello!")
# puts "-------GoodDog ancestor-----------"
# puts GoodDog.ancestors
# puts ""
# puts "-------HumanBeing ancestor-----------"
# puts HumanBeing.ancestors