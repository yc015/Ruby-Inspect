# Method Binding: Dynamic or Static Binding?

Ruby uses the dynamic method binding by default[1]:

**method_binding.rb**
```ruby
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
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/method_binding.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/method_binding.rb)

The codes above will print:  

    I am a computer with only 1 chip
    I am a robot with 3 chips

The output demonstrates that Ruby uses the dynamic method binding.

References:  
[1] [https://courses.cs.washington.edu/courses/cse341/12au/ruby/ruby-multiple-inheritance-mixins.pdf](https://courses.cs.washington.edu/courses/cse341/12au/ruby/ruby-multiple-inheritance-mixins.pdf) Late Binding in Ruby - Alan Borning, University of Washington.