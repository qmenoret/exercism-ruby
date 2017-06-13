
#
class Grains
  def self.square(x)
    raise ArgumentError, 'Invalid input' unless x > 0 && x < 65
    2**(x - 1)
  end

  def self.total
    (1..64).inject(0) { |acc, x| acc + square(x) }
  end
end
