class Team

    attr_accessor :name, :motto, :heroes

    @@all = []
    
    def initialize(params)

        params.each {|k,v| self.send("#{k}=", v)}
        
        @@all << self
    end

    def self.all

        @@all
        
    end
    
end