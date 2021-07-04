#creating songs from filenames and sending artist str to artist class
 class Song
   attr_accessor :name, :artist
   @@all = []
   
   def initialize(name)
     @name = name
     @@all << self
   end
   
   def self.all
     @@all
   end
   
   def self.new_by_filename(file_name)
     input = file_name.split(" - ")
     new_instance = Song.new(input[1])
     artist = input[0]
     new_instance.artist_name = artist
     new_instance
   end
   
   def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
   end
  end