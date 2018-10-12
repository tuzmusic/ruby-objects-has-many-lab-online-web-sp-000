require 'pry'

class Song

  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
    Artist.allsongs << self
  end

  def artist_name
    artist.name
  end

  def self.all
    @@all
  end
end
