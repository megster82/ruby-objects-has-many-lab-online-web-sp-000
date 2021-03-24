class Artist
  attr_accessor :name, :songs 
  @@song_count = 0 
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self 
    @@song_count += 1 
  end 
  
  def songs
    @songs 
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name, name)
  end 
  
  def song_count
    Song.all.count {|song| song.name}
  end 
  
end