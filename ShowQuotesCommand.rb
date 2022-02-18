class ShowQuotesCommand

    def initialize(quotes)
        @quotes = quotes
    end

    def execute
        @quotes.each do |quote|
            puts "#{quote.text}"
        end
    end
end