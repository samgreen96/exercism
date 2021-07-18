class Luhn
    def self.valid?(number)
        number.gsub!(' ', '')
        return false if bad_input?(number)
        sum = sum_sequence(double_every_second_digit(number))
        sum % 10 == 0
    end
    
    private
        def self.bad_input?(number)
            number.scan(/\D/).any? || number.length < 2
        end

        def self.double_every_second_digit(number)
            number.reverse.chars.map.with_index do |c, i| 
                if(i % 2 != 0)
                    (c.to_i * 2) > 9 ? (c.to_i * 2) - 9 : c.to_i * 2 
                else
                    c
                end
            end
        end

        def self.sum_sequence(sequence)
            sequence.sum(0) { |n| n.to_i }
        end
end

