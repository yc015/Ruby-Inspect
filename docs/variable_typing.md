# Variable Typing in Ruby: Dynamic or Static Typing?

Similarly to Python, Ruby uses duck typing and the type checking occurs at the runtime [1].

**variable_typing.rb**
```ruby
class Car
  def start_engine
    puts "Engine starts Vroom Vroom~"
  end

  def stop_engine 
    puts "Stop engine voo~"
  end
end

class MotorCycle
  def start_engine
    puts "Motor starts Vroommmm~"
  end

  def stop_engine
    puts "Stop motor moo~"
  end
end

def start_vehicles(vehicles)
  for vehicle in vehicles
    vehicle.start_engine
  end
end

def stop_vehicles(vehicles)
  for vehicle in vehicles
    vehicle.stop_engine
  end
end

vehicles = [Car.new, MotorCycle.new]
start_vehicles(vehicles)
stop_vehicles(vehicles)
```

The program will print:  

    Engine starts Vroom Vroom~
    Motor starts Vroommmm~
    Stop engine voo~
    Stop motor moo~

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/variable_typing.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/variable_typing.rb)

In Ruby, everything is an object. The type of an object is determined by the duck typing. In the example above, if objects have the start_engine method, a list of those objects can be passed into the start_vehicles method. The program will run without error.

References:  
[1] [https://blog.appsignal.com/2019/08/27/ruby-magic-type-checking-in-ruby.html](https://blog.appsignal.com/2019/08/27/ruby-magic-type-checking-in-ruby.html) Type Checking in Ruby - AppSignal Blog
