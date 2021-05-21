#!/usr/bin/ruby -w

class Robot
  def initialize(name)
    @name = name
  end

  def inspect
    "Hello I am robot #{@name}" # Return a human-readable string when printing the object
    end
end

robot_1 = Robot.new("Tom")
robot_2 = Robot.new("Jerry")

ObjectSpace.each_object(Robot) {|x| p x} # This print the living Robot objects