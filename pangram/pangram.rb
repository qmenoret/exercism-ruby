
class Pangram
    def self.pangram?(str)
        return str.tr('^A-Za-z', '').downcase.split("").uniq.sort == [*'a'..'z']
    end
end
