require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name  end
    Artist.ALL_SONGS << self
    binding.pry
end
