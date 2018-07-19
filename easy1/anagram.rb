class Anagram
	def initialize(word)
		@word = word
	end

  def letters(str)
    str.downcase.chars.sort
  end

	def match(array)
    array.select do |word2|
      letters(@word) == letters(word2) && 
      @word.downcase != word2.downcase
    end.sort
  end
end
