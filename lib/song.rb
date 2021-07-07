require 'pry'
class Song 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
  @name = name
  # @@all << self
  @artist = artist
    @@all << self
  end
  
  def self.all
   
   @@all
# binding.pry
  end
  
    def self.new_by_filename(file_name)
      # binding.pry
         array = file_name.split(" - ")
         name_of_song = array[1]
         new_song = self.new(name_of_song)
         name_of_artist = array[0]
        new_artist = Artist.find_or_create_by_name(name_of_artist)
         new_song.artist = new_artist
           new_song 
        
        # binding.pry
    end
  
   def artist_name=(name)

          self.artist = Artist.find_or_create_by_name(name)
           artist.add_song(self)




   end
  
 
  
  
end





