class Song
  attr_accessor :name, :artist_name, :filename 
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new 
    @@all << song 
    return song
  end
  
  def self.new_by_name(name)
    song = Song.new 
    @name = name 
    song.name = name 
    song
  end 
  
  def self.create_by_name(name)
    song = Song.new
    @name = name 
    song.name = name 
    @@all << song 
    song 
  end 
  
  def self.find_by_name(name)
    if @@all.any?{|song| song.name == name} == true 
      return @@all.each{|song| return song if song.name == name}
    else 
      nil
    end 
  end 
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) != nil ? self.find_by_name(name) : self.create_by_name(name)
  end 
  
  def self.alphabetical
    @@all.sort{|song1,song2| song1 <=> song2}
    return @@all
  end 
  
  def self.new_from_filename(filename)
    arr = filename.split(/[-\.]/)
    arr[0] = @artist_name 
    arr[1] = @name
    Song.new(filename)
    @filename = filename
    
  end 
    
    def self.create_from_filename(filename)
    end 
    
    def self.destroy_all
      @@all = []
    end 
  
end
