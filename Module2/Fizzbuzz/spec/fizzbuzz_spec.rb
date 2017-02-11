require_relative '../fizzbuzz'
require 'spec_helper'

describe "Fizzbuzz" do
  it "num % 3 == 0 " do
    expect(Fizzbuzz.new.fizzbuzz(9)).to eq("fizz")
  end
  it "num % 5 == 0" do
    expect(Fizzbuzz.new.fizzbuzz(20)).to eq("buzz")
  end

end
