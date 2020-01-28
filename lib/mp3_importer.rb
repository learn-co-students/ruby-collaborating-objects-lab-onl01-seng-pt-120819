require 'pry'
class MP3Importer
attr_reader :path

 def initialize (path)
  @path = path
 end
 
de

  @files ||=  Dir.glob("#{path}/*.mp3").collect do |file|
    file.gsub("#{path}/",'')
 #binding.pry
  
  end
end 
 
  def import()
   files.each{ |filename| Song.new_by_filename(filename) }
  
   end 

end