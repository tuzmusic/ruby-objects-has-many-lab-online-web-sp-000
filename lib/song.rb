require 'pry'

class Song

  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
    Artist.allsongs << self
    binding.pry
    # puts "adding #{name}"
  end

  def self.all
    @@all
  end
end
