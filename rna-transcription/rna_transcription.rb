class Complement

    def self.change(x)
        case x
        when 'G'
            'C'
        when 'C'
            'G'
        when 'T'
            'A'
        when 'A'
            'U'
        else
            raise ArgumentError,'Bad input'
        end
    end

    def self.of_dna(str)
        begin
            return str.split('').map { |k| Complement.change k }.join
        rescue ArgumentError
            return ""
        end
    end
end
