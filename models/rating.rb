class Rating

    attr_accessor :score


    def initialize(score, quote, rater)
        @score = score
        @quote = quote
        @rater = rater
    end

    def to_s
        "#{@rater.name} rated #{@quote.text} as a #{@score} out of 5"
    end

    def to_csv
        {:score => @score, :quote => @quote, :rater => @rater}
    end
end