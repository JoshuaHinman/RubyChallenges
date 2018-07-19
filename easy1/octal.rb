class Octal
  def initialize(num)
    @number = num
  end

  def to_decimal_a
    return 0 if @number.delete('^0-9') != @number
    digits = @number.split('')
    power = digits.length - 1
    octal = 0
    digits.each do |digit|
      return 0 if digit.to_i > 7 
      octal += digit.to_i * (8**power)
      power -= 1
    end
    octal
  end

  def to_decimal
    return 0 if @number.delete('^0-7') != @number
    digits = @number.to_i.digits # returns array in reverse order, indexes match power of digits
    decimal = 0
    digits.each_with_index do |digit, idx|
      decimal += digit.to_i * (8**idx)
    end
    decimal
  end
end
