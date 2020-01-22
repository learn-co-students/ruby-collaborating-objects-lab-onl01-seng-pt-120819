class Song
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist(name)
  artist = Artist.new(name)
  artist.song = self
  end
  
  def self.all
    @@all
end

def self.new_by_filename(name)
  song = Song.new(name)
    song.artist = self
end

def artist_name(name)
  if artist_name = name
    Artist.all.find {|artist| artist.song == self}
  else
    self.create
    c = self.new
    c.save
    c
   end
    
end
end