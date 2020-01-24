class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{|files| files.gsub("#{path}/", "")}
  end
  
  def import
    files.each{|files| Song.new_by_filename(files)}
  end
end