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
# def series(str, n)
#   array = []
#   (0..(str.length-n)).each do |idx|
#     digits = ''
#     (idx..(idx+n-1)).each{|n| digits += str[n]}
#     array << digits
#   end
#   array
# end

#p series("012345", 4)

# s = Series.new("012345")
# p s.slices(4)