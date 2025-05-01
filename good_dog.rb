# module Speak
#   def speak(sound)
#     puts "#{sound}"
#   end
# end

class GoodDog
  def initialize(name)
    @name=name
  end
  # include Speak
  def speak
    "Arf!"
  end
end

# class HumanBeing
#   include Speak
# end

sparky=GoodDog.new("sparky")
# puts sparky.name
puts sparky.speak
# sparky.speak("woof!")

# bob=HumanBeing.new
# bob.speak("Hello!")
# puts "-------GoodDog ancestor-----------"
# puts GoodDog.ancestors
# puts ""
# puts "-------HumanBeing ancestor-----------"
# puts HumanBeing.ancestors