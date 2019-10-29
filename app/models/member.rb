class Member

    @@members=[]

    attr_reader :name, :power, :bio

    def initialize(params)
        @name = params["name"]
        @power = params["power"]
        @bio = params["bio"]
        @@members << self
    end

    def self.all
       @@members
    end

end