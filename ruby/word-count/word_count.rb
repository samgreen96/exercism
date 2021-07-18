class Phrase
    SINGLE_WORDS = /\b[\w']+\b/

    def initialize(phrase)
        @words = phrase.downcase.scan(SINGLE_WORDS)
    end

    def word_count
        @words.group_by(&:itself).transform_values(&:count)
    end
end

