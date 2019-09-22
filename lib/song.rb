class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create 
    @@all << self.new 
    self
  end 
  
  def self.create_by_name(name)
    @name = name 
    @all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_name(name)
    @name = name
    self.name 
  end
    
  def save
    self.class.all << self
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
