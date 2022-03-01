class Quote 
    attr_accessor :text

    def initialize(quote, author='')
        @text = quote
        @author = author
    end

    def to_s
        "#{@text} by: #{@author}"
    end

    def to_csv
        {:text => @text, :author => @author}
    end

    def self.from_csv(hash)
        Quote.new(hash.field(:text), hash.field(:author))
    end
  

    
end