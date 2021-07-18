class Series
    attr_reader :series

    def initialize(series)
        @series = series
    end

    def slices(n)
        raise ArgumentError if n > @series.size
        
        regex = /(?=(\d{#{n}}))/
        @series.scan(regex).map(&:first)
    end
end

