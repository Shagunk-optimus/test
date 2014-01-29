require 'json'

class NagvisMapInfo

    attr_accessor :state, :output, :children, :group

    def initialize(group)
        file = open('./lib/nagvis.json')
        json = file.read
        parsed = JSON.parse(json)

        if group != "Hosts_UP"
            overview = parsed["overview"]
            @state = overview[group]["state"]
            @output = overview[group]["output"]
            @children = overview[group]["children"]
        end
        @group = parsed[group]
    end
end
