class RateQuotesCommand
    def initialize(rating_system)
        @rating_system = rating_system
    end

    def execute
        @rating_system.start_rater
        @rating_system.display_ratings
    end
end