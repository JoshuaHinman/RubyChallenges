class Scrabble
	def initialize(word)
		@word = word.nil? ? '' : word.strip
		@scores = {}
		set_scores(%w(a e i o u l n r s t), 1)
		set_scores(%w(d g), 2)
		set_scores(%w(b c m p), 3)
		set_scores(%w(f h v w y), 4)
		set_scores(%w(k), 5)
		set_scores(%w(j x), 8)
		set_scores(%w(q z), 10)
	end

	def set_scores(array, val)
		array.each {|letter| @scores[letter] = val}
	end

	def score
		@word.chars.reduce(0){|acc,l| acc + @scores[l.downcase]}
	end

	def self.score(word)
	 self.new(word).score
	end
end
