class Hero

    attr_accessor :name, :power, :biography

    @@all = []
    
    def initialize(params)

        params.each {|k,v| self.send("#{k}=", v)}
        
        @@all << self
        
    end

    def self.all

        @@all
        
    end
    
end