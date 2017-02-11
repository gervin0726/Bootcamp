=begin
j = 2
y = "2"
if (j==y)
  puts 'si'
else
  puts 'no'
end
=end

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

#Iteration #0: Create an array of homes
homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "Madrid", 4, 48),
  Home.new("Jose's place", "Barcelona", 12, 420),
  Home.new("Jhon's place", "Bilbao", 15, 470),
  Home.new("Mark's place", "Paris", 13, 410),
  Home.new("Luk's place", "London", 12, 450),
  Home.new("Peter's place", "Manchester", 14, 480)
]

#Iteration #1: List of homes
homes.each {|home| puts home.name}

puts "How do yo want order 1.price 2.capacity"
order = gets.chomp

#Iteration #2: Sorting
sorted = homes.sort do |home1,home2|
    if order == "1"
      home1.price <=> home2.price
    else
      home1.capacity <=> home2.capacity
    end
end

print sorted

puts "Now. What city select?"
cityUser = gets.chomp

#Iteration #3: Filter by city
citySelected = homes.select do |home|
  home.city == cityUser
end

print citySelected

#iteration #4: Average

total_price = homes.reduce(0.0) do |sum, home|
  sum + home.price
end

puts "The price average is:"
puts total_price / homes.length

#Iteration #5: Name your own price
puts "Wich price, you want?"
priceUser = gets.chomp.to_i

homeSelected = homes.select do  |home|
  home.price == priceUser
end

puts "Your home is #{homeSelected}"
