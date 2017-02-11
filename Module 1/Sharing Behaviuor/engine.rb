class Car
  def initialize(noise,engine)
    @noise = noise
    @engine = engine
  end
  def make_noise
    puts "#{@noise}#{@engine.make_noise}"
  end
end

class Engine
  def initialize(noise)
    @noise = noise
  end
  def make_noise
    @noise
  end
end

e1 = Engine.new("Broooom")
e2 = Engine.new("Breeeeem")
e3 = Engine.new("Briiiiiim")

Car.new("Brr", e1).make_noise
