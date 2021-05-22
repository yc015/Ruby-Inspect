#!/usr/bin/ruby -w

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
