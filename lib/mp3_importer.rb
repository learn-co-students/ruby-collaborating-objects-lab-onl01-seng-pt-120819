class MP3Importer
  
  def initialize(path)
    @path = path
  end
  
  def Song.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
 
end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
    
  end
end
  
  
  
end