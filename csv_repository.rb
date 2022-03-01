require 'csv'
require_relative './models/quote'
require_relative './models/rating'

class CsvRepository



    def initialize(klass)
        @file_name = "#{klass.name}.csv"
        @klass = klass
        p klass.instance_variables
    end

    def get_all
        rows = []
        table =  CSV.table( @file_name)
        table.values_at(0..table.length - 1).each do |row|
            # puts row.class
            rows.push(@klass.from_csv(row))

        end
        rows
    end

    def save(object)
        object = object.to_csv
        CSV.open(@file_name, "a+", headers: object.keys) do |file|
            file << object.values
        end
    end

end

class QuoteRepository < CsvRepository

    def initialize
        super(Quote)
    end

    def find_by_author(author)

    end

end

class RatingRepository < CsvRepository
    def initialize
        super(Rating)
    end

end

repo = QuoteRepository.new
repo2 = RatingRepository.new

repo2.save(Rating.new(3,"some quote", "some raterrater"))
# puts repo2.get_all


repo.save(Quote.new("new csv", "owen"))


# puts repo.get_all