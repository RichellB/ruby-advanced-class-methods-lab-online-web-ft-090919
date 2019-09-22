class Song
  attr_accessor :name, :artist_name
  @@all = []
  
   def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_name(name)
    @name = name
   
  end
  
  def self.find_or_create_by_name(name)
    @@all.find do |songs| 
      if songs.name == name
        name
      else 
        @@all << name
      end 
    end 
  end 
  
end
