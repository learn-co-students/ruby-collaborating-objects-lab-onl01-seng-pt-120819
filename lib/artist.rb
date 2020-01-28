require 'pry'
class Artist 
  
  attr_accessor :name
  @@all = []
  
  def initialize (name) 
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
      # Song.all.select do |s|
      # s.artist == self 
  end
  
 def self.find_or_create_by_name (name)
    artist = self.all.find {|a| a.name == name}
    if artist
      #binding.pry
       artist
   else
    Artist.new(name)
   end
 end

 def print_songs
   songs.each do |song|
    puts song.name 
   end
 end

end