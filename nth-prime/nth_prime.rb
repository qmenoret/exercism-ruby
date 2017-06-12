
# Prime
# Calculate Nth primes
class Prime
  def self.nth(up_to)
    raise ArgumentError, 'No prime <= 0' unless up_to > 0

    primes = []
    current = 2
    until primes.length >= up_to
      until prime? current, primes do current += 1 end
      primes << current
    end
    primes.last
  end

  def self.prime?(value, primes)
    primes.all? { |p| value % p != 0 }
  end
end
