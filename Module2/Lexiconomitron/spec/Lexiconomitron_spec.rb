require_relative '../Lexiconomitron.rb'
require 'spec_helper'

describe Lexiconomitron do
  describe "eat_t" do
    before :each do
      @Lexiconomitron = Lexiconomitron.new
    end
    it "remove every letter t from the text" do
      expect(@Lexiconomitron.eat_t("great scott!")).to eq("grea sco!")
    end
    it "returns first and last words of array with eat-t and reverse letters" do
      expect(@Lexiconomitron.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
    end
    it "return new array only with words lenght < 3 and eat_t" do
      expect(@Lexiconomitron.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
    end
  end
end
