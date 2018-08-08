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

  def self.where(args)
    max = args.fetch(:max_factor, 50)
    min = args.fetch(:min_factor, 3)
    sum = args.fetch(:sum, nil)
    results = []
    (min..max).each do |v1|
      (min..max).each do |v2|
        (min..max).each do |v3|
          temp =  Triplet.new(v1 , v2, v3)
          if temp.pythagorean?
            if !sum || temp.sum == sum
              results << temp unless results.any?{|trip| trip == temp}
            end
          end 
        end
      end
    end
    results
  end
end


