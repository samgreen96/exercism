class Acronym
    ACRONYM_REGEX = /\b\w/

    def self.abbreviate(name)
        key_letters = name.scan(ACRONYM_REGEX).map { |m| m.capitalize }
        key_letters.join
    end
end

