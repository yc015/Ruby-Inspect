# Inheritance

Ruby has access controls over instance methods including public, private, or protected. Ruby does not have access control over instance and class variables [1]. All methods and variables are inherited by the child classes. The constructor is inherited in the child classes. However, Ruby does not support multiple inheritance [1]. 

**inheritance.rb**
```ruby
class Car
  def initialize(engine)
    @engine = engine 
  end

  def report_engine_spec
    puts "This car has a #{@engine} engine"
  end
  
  private :report_engine_spec
end

class SportsCar < Car   # SportsCar class inherit the Car class
  def start_engine
    report_engine_spec
    puts "Start engine..."
  end
end

car = SportsCar.new("V8")
car.start_engine
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/inheritance.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/inheritance.rb)

The codes above will print:  

    This car has a V8 engine
    Start engine...

The SportsCar class inherited the Car class and Car class’s constructor and private method report_engine_spec.

Reference:  
[1] [https://www.tutorialspoint.com/ruby/ruby_object_oriented.htm](https://www.tutorialspoint.com/ruby/ruby_object_oriented.htm) Ruby Object Oriented - Tutorialspoint