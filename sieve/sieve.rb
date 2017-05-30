
class Sieve
    def initialize(n)
        @n = n
        @primes = gen_primes [*2..n]
    end

    def gen_primes(ints)
        if ints.length == 0
            []
        else
            prime = ints.shift
            [prime].concat gen_primes(ints.select{ |e| e%prime != 0 })
        end
    end

    def primes()
        @primes
    end
end
