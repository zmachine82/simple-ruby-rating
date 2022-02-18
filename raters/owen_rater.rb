class OwenRater
    attr_accessor :name

    def initialize
        @name = "OwenRater"
    end

    def rate(quote)
        if quote.downcase.include? "wow"
            return 5
        end
        return 1
    end
end