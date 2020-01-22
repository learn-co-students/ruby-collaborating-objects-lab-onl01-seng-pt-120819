class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
end

 def Artist.all
  @@all
 end

 def add_song(song)
    song.artist = self
 end
  
  def songs
    Song.all.select {|song| song.artist == self}
    puts "#{song}"
  end
  
   def self.find_or_create_by_name(song)
  if song.artist = self                                           
    Song.all.find {|song| song.artist.unique == self}
  else
    self.create
    c = self.new
    c.save
    c
   end
   print_songs
  end

  def print_songs
    puts self.find_or_create_by_name
  end

end