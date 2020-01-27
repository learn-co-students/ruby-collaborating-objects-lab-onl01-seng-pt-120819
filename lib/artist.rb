class Artist
  attr_accessor :name, :song
  @@all = []
    
  def initialize(name)
    @name = name
    @@all << self
  end
    
  def self.all 
    @@all
  end 

  def songs 
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end 

  def self.find_or_create_by_name(name)
    if self.all == []
      name = Artist.new(name)
    else 
      self.all.find { |x| x.name == name }
    end 
  end 

  def print_songs 
    songs.each {|s| puts s.name}
  end 
 
end