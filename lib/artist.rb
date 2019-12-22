require 'pry'

class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs 
    Song.all.select {|song| song.artist == self }
  end
  
  def self.find_or_create_by_name(name)
    if (self.all == [])
      artist = Artist.new(name)
    else
      self.all.find {|artist| artist.name == name }
    end
  end
  
  def print_songs
    songs.each {|song| puts song.name }
  end
  
  
end






