require 'pry'
class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.new_by_filename(filename)
    file = filename.split(" - ")
    song = self.new(file[1])
    song.artist_name = 
    
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
    else 
      self.artist.name = name
    end
  end
  
end