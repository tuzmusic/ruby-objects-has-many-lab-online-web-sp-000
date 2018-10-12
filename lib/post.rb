require 'pry'

class Post

  attr_accessor :name, :author
  @@all = []
  def initialize(name)
    @name = name
    @author = nil
    @@all << self
    Author.allposts << self
  end

  def author_name
    return author.name unless !author
    nil
  end

  def self.all
    @@all
  end
end
