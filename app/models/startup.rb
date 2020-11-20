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

   def self.find_by_founder(name)
      @@all.find {|startup| startup.founder == name  }
   end

   def self.domains
      @@all.map { |startup| startup.domain }.uniq
   end
end
