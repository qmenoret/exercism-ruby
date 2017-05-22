class Hamming
    def self.count(ar)
        if ar[0] == ar[1]
            return 0
        end
        return 1
    end

    def self.compute(strA, strB)
        raise ArgumentError,'Args should have same length' unless strA.length == strB.length

        return strA.split("").zip(strB.split("")).
            map { | els | Hamming.count els}.
            inject(0, :+)
    end
end
