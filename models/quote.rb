class Quote 
    attr_accessor :text

    def initialize(quote, author='')
        @text = quote
        @author = author
    end

    def to_s
        "#{@text} by: #{@author}"
    end

    
end