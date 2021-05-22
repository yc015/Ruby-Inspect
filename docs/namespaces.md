# Namespaces

Ruby uses the concept of namespace in boundling related modules, classes, and constants together [1].

**namespaces.rb**
```ruby
module RealCar
  class Car
    def to_s
      "I am a four-wheel sedan. Vroom..." 
    end
  end
end

module MyCar
  class Car
    def to_s
      "I am a transformer from Cybertron! VROOM!"
    end
  end
end

puts RealCar::Car.new.to_s
puts MyCar::Car.new.to_s
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/namespaces.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/namespaces.rb)

The codes above will print:  

    I am a four-wheel sedan. Vroom...
    I am a transformer from Cybertron! VROOM!

We specify which Car class is instantiated by specifying the class’s namespace.

Reference:  
[1] [https://www.geeksforgeeks.org/namespaces-in-ruby/](https://www.geeksforgeeks.org/namespaces-in-ruby/) Namespaces in Ruby - GeeksforGeeks
