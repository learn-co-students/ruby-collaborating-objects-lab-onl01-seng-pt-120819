class Artist
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def find_or_create_by_name(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
      return self.artist.name
    else
      self.artist.name = name
      return self.artist.name
    end
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
end