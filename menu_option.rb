class MenuOption
    attr_accessor :displayText, :key, :command


    def initialize(key, displayText, command = nil)
        @displayText = displayText
        @key = key
        @command = command 
    end
end
