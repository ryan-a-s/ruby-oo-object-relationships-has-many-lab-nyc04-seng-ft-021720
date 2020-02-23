require 'pry'

# each artist instance will need to return a collection of all the songs that belong to that artist
# the song class needs to know about all its instances and each instance needs to know about the artist class it belongs to
# The #add_song_by_name method should take in an argument of a name (or title), use that argument to create a new song (or post) and then associate the objects.
# build some_song.#artist_name which return the names of the artist of a given song, if the song doesn't have an artist, return nil
# the some_song#.artist should return an instance of the Artist class

class Post

    attr_accessor :title, :author

    # class variable that holds all instances of every song thats been created in an array
    @@all = []

    # class method that returns the class variable holding all song instances
    def self.all
        @@all
    end

    # a song should belong to an artist
    # each song instance needs to reference the artist it belongs to
    def initialize(title)
        @title = title
        @author = author
        @@all << self
    end

    # if the song has an artist, return the artist name. if it does not, return nil
    def author_name
        if !self.author
            nil
        else
            author.name
        end
    end
end