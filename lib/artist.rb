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
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    @@all.each{|artist| 
    if artist.name == name 
      return artist 
    else
      self.new(name)
    end
    }
  end
  
  def print_songs
    if Song.artist == self 
      Song.all
    end
  end
  
end
  