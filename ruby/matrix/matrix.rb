class Matrix
    attr_reader :rows, :columns

    def initialize(matrix_string = '')
        @rows = matrix_string.lines.map { |line| line.split.map(&:to_i) }
        @columns = @rows.transpose
    end
end

