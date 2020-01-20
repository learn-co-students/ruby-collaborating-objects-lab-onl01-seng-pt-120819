require 'pry'
class Song 
  
  attr_accessor :name, :artist 
  
  @@all= []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
 def self.new_by_filename(filename)
    song = self.new(name)
    song.name = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0] 
    binding.pry
    song
  end
  
  def artist_name=(artist)
   @artist 
   Artist.find_or_create_by_name(artist)
   artist.add_song()
  end  
  
  
end

 
    