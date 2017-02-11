require 'date'
class ShoppingCart
  @@items_cart = []
  @@total_item = []

  def initialize()
    @items = []
  end

  def add_item_to_cart(item)
    @items << item
  end

  def show_items
    @items.each {|item| @@items_cart << item_cart(item)}
    puts @@items_cart.uniq
  end

  def total_cost
    group_total_items = @@total_item.uniq
    cost = group_total_items.reduce(0) { |sum, item| sum + item }
    puts "Total is #{cost}"
  end

private
  def item_cart(item)
    num = @items.count(item)
    price = price_item(num,item)
    #price = (price_season(item) * num) - discount(num,item)
    @@total_item << price
    "#{num} #{item.name} #{price}"
  end

  def price_item(num,item)
    if item.name == "apple"
      Rational(num, 2).ceil * price_season(item)
    elsif item.name == "orange"
      Rational(2*num,3).ceil * price_season(item)
    elsif item.name == "watermelon"
      if Date.today.strftime("%A") == "Sunday"
        (num * price_season(item)) * 2
      else
         price_season(item) * num
      end
    else
      price_season(item) * num
    end
  end
  def price_season(item)
    month = Date.today.month
    if Season.season_spring? month
      price = item.price_spring
    elsif Season.season_summer? month
      price = item.price_summer
    elsif Season.season_autumn? month
      price = item.price_autumn
    else
      price = item.price_winter
    end
  end
end

class Season
  def self.season_spring? month
    month.between? 3,5
  end

  def self.season_summer? month
    month.between? 6,8
  end

  def self.season_autumn? month
    month.between? 9,11
  end
end

class Fruit
  attr_reader :name, :price_spring, :price_summer, :price_autumn, :price_winter
  def initialize(name, price_spring, price_summer, price_autumn, price_winter)
    @name = name
    @price_spring = price_spring
    @price_summer = price_summer
    @price_autumn = price_autumn
    @price_winter = price_winter
  end
end

cart = ShoppingCart.new

apple = Fruit.new("apple", 10, 10, 15, 12)
#banana = Fruit.new("banana", 20, 20, 20, 21)
orange = Fruit.new("orange", 5, 2, 5, 5)
grape = Fruit.new("grape", 15, 15, 15, 15)
watermelon = Fruit.new("watermelon", 50, 50, 50, 50)

2.times do
  cart.add_item_to_cart(apple)
end

3.times do
  cart.add_item_to_cart(orange)
end

4.times do
  cart.add_item_to_cart(grape)
end

2.times do
  cart.add_item_to_cart(watermelon)
end

cart.show_items
cart.total_cost
