class Series

  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError if n > @digits.length
    array = []
    (0..(@digits.length-n)).each do |idx|
      set = []
      (idx..(idx+n-1)).each{|n| set << @digits[n].to_i}
      array << set
    end
    array
  end
end
