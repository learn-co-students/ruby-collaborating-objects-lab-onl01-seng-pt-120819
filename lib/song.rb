class Song
  attr_accessor :artist, :name
  @@all = []
 
  def initialize(name)
    @name = name
    save
  end
  
  def artist_name
    if artist!=nil
    @artist=artist.name
    else
      return nil
    end
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  


end