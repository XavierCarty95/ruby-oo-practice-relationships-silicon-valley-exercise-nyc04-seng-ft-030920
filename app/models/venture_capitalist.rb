class VentureCapitalist
 attr_accessor :name , :worth
  Names = []
  def initialize(name , worth)
    @name = name 
    @worth = worth
    Names << self
    
  end 
  def self.all 
    Names 
  end

  def self.tres_commas_club
     Names.select do |name|
        name.worth > 1_000_000_000
     end 

end


end
