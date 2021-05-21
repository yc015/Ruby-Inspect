# Types of Variables

There are local, global, class, instance, constant variables in Ruby [1].

**types_of_variable.rb**
```ruby
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
```

The codes above will print:

    I am robot Jerry, and I have 3 chips.
    There are 2 robots now!
    Hi Human!
    See you later!

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/types_of_variable.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/types_of_variable.rb)

The $global_int is a global variable. The @@num_robot is a class variable of Robot class, and @name is an instance variable. HELLO is a constant variable. The good_bye within the display_info method is a local variable.

Reference:  
[1] [https://www.tutorialspoint.com/ruby/ruby_variables.htm](https://www.tutorialspoint.com/ruby/ruby_variables.htm) Ruby Variables - Tutorialspoint
