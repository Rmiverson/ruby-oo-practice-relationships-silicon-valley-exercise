class FundingRound
   attr_reader :startup, :venture_capitalist, :investment
   attr_accessor :type

   @@all = []
   def initialize(startup, venture_capitalist, type)
      @startup = startup
      @venture_capitalist = venture_capitalist
      @type = type
      @investment = 0.0

      @@all << self
   end

   def self.all
      @@all
   end

   def investment=(investment)
      if investment < 0.0
         @investment = 0.0
      else 
         @investment = investment.to_f
      end
   end


end
