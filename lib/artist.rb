require 'pry'
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
  
  def self.find_or_create_by_name(name)
    if @@all.find { |artist| artist.name==name}
      return @@all.find { |artist| artist.name==name}
    else
      newartist=Artist.new(name)
      return newartist
    end
  end
  
  def print_songs
    #binding.pry
    self.songs.each { |song|
    puts"#{song.name}"
    }
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
end