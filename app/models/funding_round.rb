
class FundingRound
  
  attr_reader :startup , :venture_cap
  attr_accessor :type , :investment
  ROUNDS = [] 
    def initialize(startup, venture_cap , type , investment)
        @startup = startup 
        @venture_cap = venture_cap
        @type = type
        @investment = investment.to_f
        ROUNDS << type
    end 

      def investment=(investment)
       investment > 0 ? investment : "error"  
       
    end 

    def self.all 
        ROUNDS
    end

end
