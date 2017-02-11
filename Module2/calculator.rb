class StringCalculator
  def add(numbers)
    numbers.split(",").reduce(0) {|sum,n| sum + n.to_i}
  end
end
