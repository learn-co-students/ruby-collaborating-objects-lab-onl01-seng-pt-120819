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

  def Artist.songs
    song.all
  end

  def add_song(song)
    @@all << song
  end

  def find_or_create_by_name

  end

  def print_songs

  end

end
