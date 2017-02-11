require_relative '..\CheckWords.rb'
require 'spec_helper'

class EmailProviderFake
  def initialize(words)
    @words = words
  end
end

describe CheckWords do
  let (:search_words) {CheckWordsFake.new(["urgent","important","meeting"])}
  it "all words are in subjects" do
    expect(CheckWords.new(:search_words).check_all_words_subjects).to eq(true)
  end
end
