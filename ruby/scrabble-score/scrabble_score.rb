class Scrabble
    LETTER_SCORES = {
        'A' => 1, 'B' => 3, 'C' => 3, 'D' => 2,
        'E' => 1, 'F' => 4, 'G' => 2, 'H' => 4,
        'I' => 1, 'J' => 8, 'K' => 5, 'L' => 1,
        'M' => 3, 'N' => 1, 'O' => 1, 'P' => 3,
        'Q' => 10, 'R' => 1, 'S' => 1, 'T' => 1,
        'U' => 1, 'V' => 4, 'W' => 4, 'X' => 8,
        'Y' => 4, 'Z' => 10,
    }

    def initialize(word)
        @word = word.to_s.strip.upcase
    end

    def self.score(word)
        new(word).score
    end

    def score
        return 0 unless @word
        calculate(@word)
    end

    private
        def calculate(word = '')
            word.chars.reduce(0) { |score, n| score + get_letter_score(n) } || 0
        end

        def get_letter_score(letter)
            LETTER_SCORES.fetch(letter, 0)
        end
end

