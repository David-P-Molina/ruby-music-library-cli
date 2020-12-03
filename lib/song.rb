require "pry"
class Song
    attr_accessor :name
    attr_reader  :genre, :artist

    @@all = []
    def initialize(name, artist = nil, genre = nil)
        @name = name
        @artist = artist
        @genre = genre 
        save
    end
    def genre=(genre)        
        @genre = genre
    end
    def artist=(artist)
        @artist = artist
        artist.add_song(self)
    end
    def self.all
        @@all
    end
    def save
        @@all << self
    end
    def self.destroy_all
        @@all.clear
    end
    def self.create(name)
        song = new(name)
        song.save
        song
    end

end