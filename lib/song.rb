class Song
    attr_reader :title, :genre 
    attr_accessor :artist
    @@all = []
    def initialize(title,artist,genre)
        @title = title
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all 
        @@all
    end
end
