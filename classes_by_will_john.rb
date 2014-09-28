# #cheatsheet for classes

# require 'pry'

# #how to define a class
# class Sports
# end

# #this is the most basic way of initializing an instance variable of the class Sport
# new_sport = Sports.new
# #this is how you can call/initialize your class
# #the data type of this is Sports

# #steps that a class takes when initialized
# #after calling the class
# # 1) creates a new 'class' object
# # 2) if there exists attr_accessor, it will create getter/setter methods for the attributes listed as symbols
# # 3) it runs the 'initialize' method if it exists, passing arguments from the .new call of the class

# class Sports

#
#   def initialize(players) #instance method
#     @players = players #instance variable
#   end

# end

# #below we create a new instance of the Sports class
# new_sport = Sports.new 100



# #if we want to make a Sports class and use an attr_accessor
# #it will look like this
# class Sports

#   attr_accessor :players
#   #this attr_accessor asks what getter/setter methods to create.
#   #the two methods below are the methods that attr_accessor writes.

#   # def players
#   #   @players
#   # end

#   # def players = (players)
#   #   @players = players
#   # end



# end
# #this is how we would initalize the class and call the attr_accessor on the new_sport
# new_sport = Sports.new
# new_sport.players


# #INHERITANCE

# #sub-classes inherit from ONE superclass
# #for example if we made a sub-class, we could inherit from the Sports super class

# class Football < Sports
# end

# #the sub class of Football inherits methods from the superClass Sports.

# class Sports

#   def initialize(num_players)
#     @num_players = num_players
#   end

# end

# class Football #defining a class

#   def initialize(score=0, num_players) #initialize method, run when you call .new
#     @score = score # this is an instance variable, that takes the argument passed in from new method and only if there is an attr_accessor it turns it into a getter/setter method
#     @number_of_quarters = 4 #another instance variable
#     super(num_players) #super is a method that references the super-class intialize method and sets the instance variable 'num_player'
#   end

# end

# #to call the class Football
# football_team = Football.new 0, 11


#make a new class
class Cat

  attr_accessor :weight

  def initialize(age, name)
    @age = age
    @name = name
  end

  def purr
    puts @name + " purr"
  end

end

#now to call

new_cat = Cat.new 5, "Kittens" #this will make a new cat in the class of Cat with an age of 5 and the name of kittens
thing = new_cat.weight=9
new_cat.purr #this will call the method purr onto the new_cat
puts thing





