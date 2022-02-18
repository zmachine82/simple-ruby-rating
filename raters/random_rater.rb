class RandomRater
    attr_accessor :name
    
    def initialize(bias = 0)
       @bias = bias 
       @name = "RandomRater with bias #{@bias}"
    end


    def rate(quote)
        return rand(1..5) + @bias
        
    end
end