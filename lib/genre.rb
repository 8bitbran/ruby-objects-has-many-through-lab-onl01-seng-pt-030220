class Genre 
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def self.all 
    @@all 
  end
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 
  
  def artists 
    songs.collect {|song| song.artist}
  end 
  
  def save 
    @@all << self 
  end
  
end 