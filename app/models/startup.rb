class Startup
    attr_accessor :name, :domain
    attr_reader :founder
    ALL = []
    DOMAINS = []
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        ALL << self
        @domain = domain
        DOMAINS << @domain
    end
    def pivot(new_name, new_domain)
        @name = new_name
        @domain = new_domain
    end
    def self.all
        ALL
    end
    def self.find_by_founder(founder)
        founder_instance = ALL.select do |instance|
            instance.founder == founder
        end
        founder_instance[0].name
    end
    def self.domains
        DOMAINS
    end
end