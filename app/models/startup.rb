class Startup
   attr_accessor :name
   attr_reader :founder, :domain

   @@all = []
   def initialize(founder, name, domain = nil)
      @name = name
      @founder = founder
      @domain = domain

      @@all << self
   end

   def pivot(domain, name)
      @domain = domain
      @name = name
   end

   def self.all
      @@all
   end

   def sign_contract(venture_cap, type, amount)
      new_funding_round = FundingRound.new(self, venture_cap, type)
      new_funding_round.investment = amount
      new_funding_round
   end

   def get_funding_rounds
      FundingRound.all.select {|round| round.startup == self }
   end

   def num_funding_rounds
      self.get_funding_rounds.length
   end

   def total_funds
      self.get_funding_rounds.sum {|round| round.investment}
   end

   def investors
      self.get_funding_rounds.map {|round| round.venture_capitalist}.uniq
   end

   def big_investors
      self.investors.select {|investor| VentureCapitalist.tres_commas_club.include? investor}
      
   end

   def self.find_by_founder(name)
      @@all.find {|startup| startup.founder == name  }
   end

   def self.domains
      @@all.map { |startup| startup.domain }.uniq
   end
end
