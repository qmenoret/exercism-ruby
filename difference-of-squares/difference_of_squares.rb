
class Squares

    def initialize(x)
        @x = x
    end
    
    def self.square(n)
        n*n
    end

    def sum_of_squares()
        (1..@x).map{ |n| Squares.square n }.
            inject(0){|sum,n| sum + n }
    end

    def square_of_sum()
        Squares.square (0..@x).inject(0){|sum,n| sum + n }
    end

    def difference()
        square_of_sum - sum_of_squares
    end
end
