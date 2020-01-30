class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end  

  def files
    Dir.entries(@path).grep(/.mp3/)
    
    # alternate way
    # @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end  

  def import
   self.files.each{|file| Song.new_by_filename(file)}
  end   
end  