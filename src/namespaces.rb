#!/usr/bin/ruby -w

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
