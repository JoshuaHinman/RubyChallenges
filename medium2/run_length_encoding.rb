class RunLengthEncoding
  def self.encode(string)
    result = ''
    idx = 0
    while idx < string.length
      start = idx
      while idx < string.length && string[idx] == string[idx+1]
        idx += 1
      end
      length = idx - start + 1
      result << "#{length > 1 ? length : ""}#{string[idx]}"
      idx += 1
    end
    result
  end

  def self.decode(string)
    result = ''
    while !string.empty?
      if string[0].match(/[0-9]/)
        run = string.slice!(/[0-9]+/).to_i
      else
        run = 1
      end
      char = string.slice!(0)
      run.times{result << char}
    end
    result
  end
end

