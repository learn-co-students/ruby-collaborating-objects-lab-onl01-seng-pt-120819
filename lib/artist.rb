class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end 
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    @songs << song
    song.artist = self 
  end 
    
  def songs
    Song.all.select { | song | song.artist == self }
  end 
  
  def self.find(name)
    @@all.detect {|artist| artist.name == name} 
  end 
  
  def self.find_or_create_by_name(name)
     if self.find(name)
       self.find(name)
     else
       self.new(name)
     end 
  end 
  
  def print_songs
    self.songs.each { | song | puts song.name }
  end 
  
    
  
end 
  
    