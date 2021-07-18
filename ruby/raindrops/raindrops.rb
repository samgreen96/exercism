class Raindrops
    RAINDROPS = {
        3 => 'Pling',
        5 => 'Plang',
        7 => 'Plong'
    }

    def self.convert(number)
        conversion = ''
        RAINDROPS.each { |factor, sound| conversion += sound if factor_of?(number, factor) }
        conversion.empty? ? conversion = number.to_s : conversion
    end

    private
        def self.factor_of?(number, factor)
            (number % factor) == 0
        end
end

