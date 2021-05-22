#!/usr/bin/ruby -w

class Comp
  def report
    self.spec    # Call spec method
  end

  def spec
    puts "I am a computer with only 1 chip"
  end
end

class Robot < Comp   # Inherited the Comp class
  def spec          # Override the spec method
    puts "I am a robot with 3 chips"
  end
end

computer = Comp.new
computer.report
robot = Robot.new
robot.report
