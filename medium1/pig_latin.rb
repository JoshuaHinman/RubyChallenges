class PigLatin
  def self.translate(string)
    result = 
    string.split.map do |word|
      if word.match(/^(thr|sch|[^aeiou]qu)/i)
        word << word.slice!(0..2)
      elsif word.match(/^(ch|th|qu)/i)
        word << word.slice!(0..1)
      elsif word.match(/^(x[aeiou]|y[aeiuo]|[^aeiouyx])/i)
        word << word.slice!(0)
      end
      word << 'ay'
    end
    result.join(' ')
  end
end
