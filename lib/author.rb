require_relative 'post'

class Author

    attr_accessor :name

    def initialize(name)
        self.name = name
        @posts = []
    end

    def add_post(post)
        self.posts << post
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end
    
    def posts
       Post.all.select {|post| post.author == self}
    end

    def self.post_count
        Post.all.size
    end
end