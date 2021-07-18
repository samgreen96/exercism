class Isogram
    def self.isogram?(input)
        letters = input.downcase.scan(/\w/)
        letters.eql?(letters.uniq)
    end
end
