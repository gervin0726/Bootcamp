class Lexiconomitron
  def eat_t(string)
    string = string.gsub('t', '')
    string = string.gsub('T','')
  end
  def shazam(array)
    first = eat_t(array.first.reverse)
    last = eat_t(array.last.reverse)
    [first,last]
  end
  def oompa_loompa(array)
    result = array.select {|word| word.length <= 3}
    result.map { |word| eat_t(word) }
  end
end
