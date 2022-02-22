class AddQuoteCommand

    def initialize(quotes)
        @quotes = quotes
    end

    def execute
        input = Question.ask("What is the quote you want to add?")
       @quotes.push(
           Quote.new(
                input, 
                Question.ask("Who said dat?")
            )
        )
    end
end