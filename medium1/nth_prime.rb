class Prime
  def self.nth(n)
    raise ArgumentError if n < 1
    count = 0
    num = 0
    while count < n
      count += 1 if self.is_prime?(num)
      num += 1
    end
    num - 1
  end

  def self.is_prime?(num)
    return false if num < 2
    !(2..(num-1)).to_a.any?{|test| num % test == 0}
  end
end
