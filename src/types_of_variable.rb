#!/usr/bin/ruby -w

$global_int = 3   # Global variable
class Robot
  HELLO = "Hi Human!"   # Constant variable
  @@num_robot = 0        # Class variable shared among the Robot objects
  def initialize(name)
    @name = name # Instance variable of the created objects
    @@num_robot += 1
  end

  def display_info
    puts "I am robot #{@name}, and I have #{$global_int} chips."
    puts "There are #{@@num_robot} robots now!"
    puts HELLO
    good_bye = "See you later!"   # Local variable
    puts good_bye
  end
end

robot_1 = Robot.new("Tom")
robot_2 = Robot.new("Jerry")

robot_2.display_info