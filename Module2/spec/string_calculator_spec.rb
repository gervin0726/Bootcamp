require_relative '../calculator'
require 'spec_helper'

describe "StringCalculator" do
  it "returns 0 for any an empty string" do
    # cuando ejecuta lo que sta dentro del expect el to eq quiere decir debe devolver 0 es un como un = 0
    expect(StringCalculator.new.add("")).to eq(0)
  end
  it "returns 3 just that number" do
      expect(StringCalculator.new.add("3")).to eq(3)
  end
  it "returns total when sum two numbers" do
    expect(StringCalculator.new.add("8,4")). to eq(12)
  end
  it "returns total when sum more than two numbers" do
    expect(StringCalculator.new.add("4,5,7,8")).to eq(24)
  end
end
