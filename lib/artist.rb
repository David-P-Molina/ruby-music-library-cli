require "pry"
class Artist
 #   extend Findable
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
    end
    def songs
        @songs
    end
    def save
        @@all << self
    end
    def add_song(song)
        unless song.artist
            song.artist = self
        end
        unless @songs.include?(song)
            @songs << song
        end
    end
    def self.all
        @@all
    end
    def self.destroy_all
        @@all.clear
    end
    def self.create(name)
        artist = new(name)
        artist.save
        artist
    end
    # def self.find_by_name(name)
    # @@all.detect{|artist| artist.name == name}
    # end
end