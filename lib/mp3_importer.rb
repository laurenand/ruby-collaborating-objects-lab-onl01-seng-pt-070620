require 'pry'
class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    Dir.entries(path).select do |song|
            song if song.size > 2
        end
        binding.pry
  end
  
  def import 
    files.each {|filename| Song.new_by_filename(filename)}
  end
end