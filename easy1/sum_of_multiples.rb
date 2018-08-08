class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  #Generates array by multiplying each multiple until out of range
  def to(limit)
    results = []
    @multiples.each do |multiple|
      num = multiple
      while num < limit
        results << num
        num += multiple
      end
    end
    results.uniq.sum
  end

  # Checks each number in range to determine if multiple
  def self.to(limit)
    multiples = [3, 5]
    (1..(limit-1)).select do |num|
      multiples.any?{|m| num % m == 0}
    end.sum
  end
end
