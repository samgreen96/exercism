class HighScores
    attr_accessor :scores

    def initialize(scores = [])
        @scores = scores
    end

    def latest
        @scores.last
    end

    def personal_best
        sorted_scores.first
    end

    def personal_top_three
        sorted_scores.first(3)
    end

    def latest_is_personal_best?
        personal_best.eql?(latest)
    end

    private
        def sorted_scores
            @scores.sort.reverse
        end
end

