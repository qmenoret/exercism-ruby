class Raindrops
    def self.convert(n)
        str = ''
        if n%3==0
            str += 'Pling'
        end
        if n%5==0
            str += 'Plang'
        end
        if n%7==0
            str += 'Plong'
        end
        if str==''
            str = n.to_s
        end
        str
    end
end
