require 'pry'

# write a class method that returns the total number of songs that have been created.

class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_post(title)
        title.author = self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end
    
    def add_post_by_title(title) # takes in an argument of a song name
        post = Post.new(title) # sets a local variable that creates a new song with the passed in argument
        self.add_post(post) # invokes #add_song attaching the artist name and passing in the local variable above
    end

    def self.post_count
        Post.all.length
    end

end