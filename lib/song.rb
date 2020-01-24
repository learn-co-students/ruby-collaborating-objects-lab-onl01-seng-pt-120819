class Song
    attr_accessor :artist, :name

    @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @artist = nil
  end

  def Song.all
    @@all
  end

  def self.new_by_filename(filename)
      artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
      song = self.new(song_name)
      song.artist = Artist.find_or_create_by_name(artist_name)
      song.genre = genre_name
  end

  def artist_name=(artist)
    @artist = artist

  end

end
