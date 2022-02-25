require_relative "rating_system"
require_relative "menu_option"
require_relative "ShowQuotesCommand"
require_relative "AddQuoteCommand"
require_relative "rate_quote_command"
require_relative "question"



class Menu
    def initialize(options = [])
        @options = options
        @options.push(MenuOption.new("q", "Quit"))
        show_menu
    end


    def show_menu
        @options.each do |option|
            puts "#{option.key}. #{option.displayText} "
        end
        handle_input
    end
    
    def handle_input
        input = gets.chomp
        
        selected_option = @options.select {|option| option.key.downcase == input.downcase}

        if selected_option.length > 0
            if selected_option[0].key == 'q'
                return
            end
            selected_option[0].command.execute
        else
            puts "Did not find option with key of #{input}"
        end
        show_menu
    end

end


system = RatingSystem.new

puts "Welcome to Quote Rater!"
menu = Menu.new([
    MenuOption.new("1", "Show All Quotes", ShowQuotesCommand.new(system.quotes)),
    MenuOption.new("2", "Add a Quote", AddQuoteCommand.new(system.quotes)),
    MenuOption.new("3", "Rate Quotes", RateQuotesCommand.new(system)),
    
])