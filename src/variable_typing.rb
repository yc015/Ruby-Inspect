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