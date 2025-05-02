# Use class inheritance in case of "is-a relationship". Use module mixin for "has-a" relationship

module Swimmable #add "able" suffix to verb for module name
  def swim
    "I'm swimming!"
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

#Namespacing of classes using modules (Gathering simil;ar classes in a single module; stops colliding similarly named classes)
module Mammal_animals
  class Horse
    def speak(sound)
      p "#{sound}"
    end
  end

  class Goat
    def say_name(name)
      p "#{name}"
    end
  end
end

#Module as container for methods
module Conversions
  def self.farenheit_to_celsius(num)
    (num - 32) * 5 / 9
  end
end

class Animal
  attr_accessor :name

  def initialize(name)
    @name=name
  end

  def speak
    "Hello!"
  end
end

class Fish < Animal
  include Swimmable #mix in =mix-in of modules in class
end

class Mammal <Animal 
  
end

class Dog < Mammal
  include Swimmable #mix in =mix-in of modules in class
  include Climbable # last module is searched first for methods
end

class Cat < Animal  
  def initialize(color)
    super
    @color=color
  end

  def speak
    super+ ", #{name} says meow from Cat class!"
  end
end

class GoodDog < Animal

  puts self # shows that self is the class GoodDog itself when in global scope of class
  DOG_YEARS=7
  attr_accessor :name, :weight, :height, :age

  @@number_of_dogs=0

  def initialize(n, h, w, a)
    super(n) #super() calls method in superclass with no argument. If superclass method takes no argument but subclass passes arguments, this is the way to call.
    @height=h #instance variable declaration
    @weight=w
    self.age=a*DOG_YEARS #calls setter method with self
    @@number_of_dogs+=1 #class variable @@, in global class scope
  end
  
  # include Speak
  def speak
    super()+", #{name} says Arf! from GoodDog class"
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
    #Method should always return string. Otherwise method override won't work as expected.One should also keep note of the returned value in puts argument on which to_s will be applied. If it is not the correct object then the overriding to_s may not work and instead Object#to_s may be called.
  end
  def what_is_self
    self # shows that self is the instance itself when in local scope of instance methods. self sees the immediate scope.
  end
  #Method access control
  #Access modifiers: private, public, protected. All above methods in the GoodDog class are public methods. Sometimes there will be methods which will work but may not available to other rest of the program. These are private methods.
  
  def public_disclosure
    "#{name} in human years is #{human_years}" #self.human_years is not allowed as human_years in private method. private methods are not available outside class definition
  end

  private # anything below it is private

  def human_years
    age*DOG_YEARS
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
p sparky
"#{sparky}" #string interpolation also calls to_s on argument
p sparky.what_is_self
puts sparky.public_disclosure

paws=Cat.new("Brown")
puts paws.speak
p paws
some_dog=Dog.new("Bony")
puts some_dog.name
puts some_dog.swim
some_fish=Fish.new("Nemo")
puts some_fish.name
puts some_fish.swim

puts "---Dog method lookup---"
puts Dog.ancestors

buddy = Mammal_animals::Horse.new
kitty = Mammal_animals::Goat.new
buddy.speak('neighh!')           # => "Arf!"
kitty.say_name('kitty')       # => "kitty"

value = Conversions::farenheit_to_celsius(32)#Two ways of calling methods from container modules
puts value
value = Conversions.farenheit_to_celsius(212)
puts value

# bob=HumanBeing.new
# bob.speak("Hello!")
# puts "-------GoodDog ancestor-----------"
# puts GoodDog.ancestors
# puts ""
# puts "-------HumanBeing ancestor-----------"
# puts HumanBeing.ancestors