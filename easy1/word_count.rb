class Phrase
  def initialize(string)
    @sentence = string
  end

  def word_count
    words = @sentence.scan(/\b\w+\'?\w+\b|\d+/)
    words.each_with_object(Hash.new(0)) do |w,hsh|
      hsh[w.downcase] += 1
    end
  end
end
