class Team

    attr_reader :name, :motto, :members

    def initialize(params)
        @name = params["name"]
        @motto = params["motto"]
        @members = params["members"]
    end

end