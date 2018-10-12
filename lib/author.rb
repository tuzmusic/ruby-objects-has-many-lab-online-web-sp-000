require "pry"

class Author

  attr_accessor :title, :posts

  @@allposts = []

  def self.allposts
    @@allposts
  end

  def initialize(title)
    @title = title
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    new_post = post.new(title)
    add_post(new_post)
  end

  def self.post_count
    Author.allposts.size
  end
end
