class PerfectNumber
  def self.classify(number)
    raise RuntimeError, "Number must be positive" if number < 1
    factors = (1...number).select {|num| number % num == 0}
    sum = factors.sum
    if sum == number
      'perfect'
    elsif sum > number
      'abundant'
    else
      'deficient'
    end
  end
end
