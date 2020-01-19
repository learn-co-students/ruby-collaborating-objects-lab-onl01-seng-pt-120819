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
    Song.new(self) = song
  end
  
  def songs 
   
  end
  
  def self.find_or_create_by_name(name)
    if @@all.each {|artist| artist.name == name}
      artist 
    else 
      self.new(name)
    end
  end
  
  def print_songs
    if Song.artist == self 
      Song.all
    end
  end
  
end
  