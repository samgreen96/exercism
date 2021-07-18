class Clock
    attr_reader :hour, :minute

    def initialize(hour: 0, minute: 0)
        normalise_time(hour: hour, minute: minute)
    end

    def to_s
        "%02d:%02d" % [@hour, @minute]
    end

    def +(other)
        normalise_time(
            hour: @hour + other.hour, 
            minute: @minute + other.minute
        )
    end

    def -(other)
        normalise_time(
            hour: @hour - other.hour, 
            minute: @minute - other.minute,
        )
    end

    def ==(other)
        other.hour == @hour && other.minute == @minute
    end

    private
        def normalise_time(hour: 0, minute: 0)
            hour = (hour + (minute / 60)) % 24
            minute = minute % 60
            @hour = hour
            @minute = minute
            itself
        end
end
