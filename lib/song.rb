require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name  end
    @artist = nil
    Artist.allsongs << self
    # binding.pry
    puts "adding #{name}"
  end
