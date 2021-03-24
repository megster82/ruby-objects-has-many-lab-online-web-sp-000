class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name, name)
  end 
  
  def song_count
    Song.all.count {|song| song.name}
  end 
  
end