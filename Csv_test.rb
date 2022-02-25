require 'csv'
require_relative 'models/quote'

quotes = [
    Quote.new("some quote"),
    Quote.new("wow a quote"),
    
]


# write data
File.open("quotes.csv") do |file|
    file_data = ""

    quotes.each  do |quote|
        file_data = file_data + CSV.generate_line([quote.text])
    end
    
    File.write("quotes.csv", file_data)
end


quotes_from_csv = []
# read data
File.open("quotes.csv") do |file|
    

    CSV.foreach(file) do |row|
        quotes_from_csv.push(Quote.new(row[0]))
    end
   
end


puts "here are some quotes #{quotes_from_csv}"