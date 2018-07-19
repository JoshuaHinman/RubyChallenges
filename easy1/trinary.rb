class Trinary
  def initialize(num)
    @trinary = num
  end

  def invalid_trinary?
    @trinary.delete('^0-2') != @trinary
  end

  def to_decimal
    return 0 if invalid_trinary?
    @trinary.to_i.digits.map.with_index do |num, idx|
      num * 3**idx
    end.sum
  end
end