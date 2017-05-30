
class Fixnum

    def self.one_step(n, chars)
        case n
        when 0
            []
        when 1..3
            [Array.new(n, chars[0])]
        when 4
            [chars[0],chars[1]]
        when 5
            [chars[1]]
        when 6..8
            [chars[1]].concat Array.new (n-5),chars[0]
        when 9
            [chars[0],chars[2]]
        when 10
            [chars[2]]
        end.join
    end

    def to_roman()
        (Fixnum.one_step self/1000%10,  ['M','?','?']).
            concat (Fixnum.one_step self/100%10, ['C','D','M']).
            concat (Fixnum.one_step self/10%10,  ['X','L','C']).
            concat (Fixnum.one_step self%10,     ['I','V','X'])
    end
end

