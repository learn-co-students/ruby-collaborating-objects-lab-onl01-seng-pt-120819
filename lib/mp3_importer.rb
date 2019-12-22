require 'pry'

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path  
  end
  
  def files
    array = Dir.entries(@path)
    converted_array = array.delete_if {|element| element == "." || element == ".."}
  end
  
  def import
    converted_array = files.map { |file| file.split(" - ").join(".").split(".")[0..-2].join(" - ") }
    
    converted_array.each{ |filename| Song.new_by_filename(filename) }
    
  end
end