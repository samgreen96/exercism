class ResistorColorDuo
    RESISTOR_COLORS = {
        black: 0,
        brown: 1,
        red: 2,
        orange: 3,
        yellow: 4,
        green: 5,
        blue: 6,
        violet: 7,
        grey: 8,
        white: 9,
    }

    def self.value(colors)
        resistor_values = colors.first(2).map { |color| get_resistor_value(color) }
        resistor_values.join.to_i
    end

    private
        def self.get_resistor_value(color)
            RESISTOR_COLORS[color.to_sym]
        end
end

