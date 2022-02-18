require_relative 'raters/owen_rater'
require_relative 'raters/random_rater'
require_relative 'models/quote'


class RatingSystem

    attr_accessor :quotes

    def initialize
        @quotes = [
            Quote.new("some quote"),
            Quote.new("wow a quote"),
            
        ]
        
        @raters = [
            RandomRater.new,
            RandomRater.new(1),
            OwenRater.new
        ]
        
        @ratings = []
        
       
    end

    def start_rater
        @raters.each do |rater| 
            @quotes.each do |quote| 
                rating = rater.rate(quote.text)
                @ratings.push("#{rater.name} rated '#{quote.text}' a #{rating} out of 5")
            end
        end
        
        @ratings.each do |r|
            puts r
        end
    end
end



# app take in quotes and raters and generate ratings and display those ratings in some way