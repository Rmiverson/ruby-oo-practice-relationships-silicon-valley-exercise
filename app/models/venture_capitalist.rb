class VentureCapitalist
    attr_accessor :name
    attr_reader :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all 
        @@all
    end 

    def self.tres_commas_club
        @@all.select { |capitalist| capitalist.total_worth > 1000000000 }
    end
end
