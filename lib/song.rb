class Song
  attr_accessor :name, :artist_name
  @@all = []
  
   def save
    self.class.all << self
  end

  def self.create
    songs = Song.new
    songs.save
    songs
  end
  
  def self.create_by_name(song_name)
    songs = self.create
    songs.name = song_name
    songs
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_name(song_name)
    songs = self.new 
    songs.name = song_name 
    songs
   
  end
  
   def self.find_by_name(song_name)
    self.all.find do |s| 
      s.name == song_name
    end
  end

  
  def self.find_or_create_by_name(name)
   songs.find
      else 
        @@all << name
      end 
    end 
  end 
  
end
