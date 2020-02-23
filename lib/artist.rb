require 'pry'

# write a class method that returns the total number of songs that have been created.

class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(title)
        title.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end
    
    def add_song_by_name(title) # takes in an argument of a song name
        song = Song.new(title) # sets a local variable that creates a new song with the passed in argument
        self.add_song(song) # invokes #add_song attaching the artist name and passing in the local variable above
    end

    def self.song_count
        Song.all.length
    end

end