class Artist
  attr_accessor :name, :songs
  
  @@all = []  
  
  def initialize(name) 
    @name = name
    @songs = []  
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all  
    @@all
  end
  
  def songs  
    Song.all.select{|song|song.artist == self}
  end 
  
  def add_song(song) 
    song.artist = self 
  end

  def self.find_or_create_by_name(name)  
    if self.all.find{|artist| artist.name == name}
      self.all.find{|artist| artist.name == name}
    else 
      new_artist = self.new(name) 
      new_artist.name = name
      new_artist
    end
  end

  def print_songs 
    self.songs.each {|song|puts song.name}
  end
end