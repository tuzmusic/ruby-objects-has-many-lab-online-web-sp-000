require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name  end
    Artist.allsongs << self
    binding.pry
end
