class TwelveDays
    GIFTS = {
        '1': 'a Partridge in a Pear Tree',
        '2': 'two Turtle Doves',
        '3': 'three French Hens',
        '4': 'four Calling Birds',
        '5': 'five Gold Rings',
        '6': 'six Geese-a-Laying',
        '7': 'seven Swans-a-Swimming',
        '8': 'eight Maids-a-Milking',
        '9': 'nine Ladies Dancing',
        '10': 'ten Lords-a-Leaping',
        '11': 'eleven Pipers Piping',
        '12': 'twelve Drummers Drumming',
    }

    ORDINALS = {
        '1': 'first',
        '2': 'second',
        '3': 'third',
        '4': 'fourth',
        '5': 'fifth',
        '6': 'sixth',
        '7': 'seventh',
        '8': 'eighth',
        '9': 'ninth',
        '10': 'tenth',
        '11': 'eleventh',
        '12': 'twelfth'
    }

    def self.song
        string = ''
        (1..12).each do |i|
            string += "\n" unless i == 1
            string += intro(i) + gifts(i)
            string += "\n"
        end

        string
    end

    def self.intro(day)
        "On the #{ORDINALS[day.to_s.to_sym]} day of Christmas my true love gave to me: "
    end

    def self.gifts(day)
        string = ''
        (1..day).to_a.reverse.each do |i|
            case i
            when 1
                string += GIFTS[i.to_s.to_sym] + '.'
            when 2
                string += GIFTS[i.to_s.to_sym] + ', and '
            else
                string += GIFTS[i.to_s.to_sym] + ', '
            end
        end

        string
    end
end

