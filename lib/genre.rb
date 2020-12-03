require "pry"
class Genre
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
        @songs =[]
    end
    def save
        @@all << self
    end
    def songs
        @songs
    end
    def self.all
        @@all
    end
    def self.destroy_all
        @@all.clear
    end
    def self.create(name)
        genre = new(name)
        genre.save
        genre
    end
end