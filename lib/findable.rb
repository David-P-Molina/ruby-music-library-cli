module Findable
    def self.find_by_name(name)
        @@all.detect{|search| search.name == name}
        end
end