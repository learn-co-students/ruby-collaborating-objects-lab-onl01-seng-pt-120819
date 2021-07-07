require 'pry'

class Song 
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  
  def self.new_by_filename(filename)
    # binding pry 
    artist = filename.split(" - ")[0]
    song = filename.split(" - ")[1]
    title = Song.new(song)
    title.artist_name = artist
    title
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  

  
end 