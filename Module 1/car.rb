class Car
  attr_reader :number_of_cars, :noise
  @@number_of_cars = 0
  def initialize(noise)
    @noise = noise
    @@number_of_cars += 1
  end
  def self.number_of_cars
    @@number_of_cars
  end
end

normal_car = Car.new("Brooom")
puts normal_car.noise
noisy_car = Car.new("BROOOOOOM")
puts noisy_car.noise

puts Car::number_of_cars
