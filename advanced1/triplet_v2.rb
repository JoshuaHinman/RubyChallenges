class Triplet
  attr_reader :triplet
  def initialize(*args)
    @triplet = args.sort
  end

  def sum
    triplet.sum
  end

  def product
    triplet.reduce(:*)
  end

  def pythagorean?
    triplet[0] ** 2 + triplet[1] ** 2 == triplet[2] ** 2
  end

  def ==(other)
    @triplet == other.triplet
  end

  def self.where(max_factor: 50, min_factor: 3, sum: nil)
    results = []
    (min_factor..max_factor).to_a.combination(3) do |triplet|
      temp =  Triplet.new(*triplet)
        if temp.pythagorean?
          if !sum || temp.sum == sum
            results << temp unless results.any?{|trip| trip == temp}
          end
        end 
      end
    results
  end
end


