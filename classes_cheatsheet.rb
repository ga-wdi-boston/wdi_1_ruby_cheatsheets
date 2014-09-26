class Collector
  attr_accessor :guitars, :basses

  def initialize
    guitars = []
    basses = []
  end
end

class Instrument  # this is the superclass of Guitar and Bass

  def initialize(value)
    @value = value
  end

  def play      #this method can be accessed by any object that inherits from Instrument class
    puts "buzz"
  end

end

# this a new instrument object that inherits from Instrument:
theremin = Instrument.new(300)


# This is an example of a most basic class definition (every new class you create implicitly inherits from Object class):
class Guitar < Instrument
end


telecaster = Guitar.new(1200)
# you don't need to actually initialize anything to create a new Guitar object
# 1. this is creating a new Guitar object that is empty
# 2. if there is an attr_accessor, it uses that to create getter and setter methods for attributes named with symbols
# 3. if there IS an initialize method defined, it runs it and passes along arguments from .new. if there isn't one, the new obj can still be created with no attributes

class Drum < Instrument

  #optional method that will run after calling .new:
  def initialize(value)
    # if I call super in a method of a subclass, it will execute the method of the same name in the superclass (always make sure the number of args matches):
    super(value)
    @condition_of_heads = "good"
  end

  def play
    super  #this brings in the content of "play" from the super
    puts "BANG"
  end

end

loud_drums = Drum.new 100, "poor"
drums.play

class Bass < Instrument
  # this is a shortcut for the creation of common methods to get/set attributes of a new Bass. you could manually write your own (this is actually an example of metaprogramming because it's a method to defifne methods):
  attr_accessor :num_strings


  # def num_strings
  #   @num_strings
  # end

  # def num_strings=(strings)
  #   @num_strings = strings
  # end


# I can create multiple instances of any class
p_bass = Bass.new
jazz_bass = Bass.new
p_bass.num_strings


david = Collector.new
david.guitars << telecaster
david.basses << jazz_bass
david.basses << p_bass

# INHERITANCE
# bass and guitar are both instruments, and they both derive from the superclass Instruments
# when ANY method is called on an instance of a class, it looks for more the most low-level (specific) one in the tree, and runs that
