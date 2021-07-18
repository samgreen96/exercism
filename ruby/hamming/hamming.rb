class Hamming
    def self.compute(strand_a, strand_b)
        raise ArgumentError if strand_a.length != strand_b.length
        strand_a.length.times.count{ |i| strand_a[i] != strand_b[i] }
    end
end

