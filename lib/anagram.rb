class Anagram
  require 'pry'

  def initialize(string)
    @string = string
  end

  def match(sentence)
    @sentence = sentence
    array = []
    @sentence.each do |word|
      sorted = word.split""
      sorted.sort!
      compare = @string.split""
      compare.sort!
      if compare == sorted
         array <<word
      end
        # binding.pry
    end
    array
  end
end