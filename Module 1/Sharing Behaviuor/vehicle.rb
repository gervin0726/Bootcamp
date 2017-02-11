class vehicle
  attr_reader :wheels
  def initialize(wheels,noise)
    @wheels = wheels
    @noise = noise
  end
  def make_noise
    @noise
  end
end

class Car < vehicle
end

class MotorCycle < vehicle
end

class WheelsCounter
  def self.count_wheels()
    @vehicles.reduce(0) {|sum,vehicle| sum + vehicle.wheels}
  end
end

class printNoise
end


e1 = Car.new(4,"Broooom")
e2 = MotorCycle.new(2,"Breeeeem")

WheelsCounter.count_wheels[e1,e2]
