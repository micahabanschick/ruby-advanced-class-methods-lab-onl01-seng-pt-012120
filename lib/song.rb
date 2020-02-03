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
    Song.new 
    @@all << self 
  end
  
  def self.new_by_name(name)
    Song.new(name)
    @name = name 
  end 
  
  def self.create_by_name(name)
    Song.new(name)
    @name = name 
    @@all << self 
  end 
  
  def self.find_by_name(name)
    @@all.each{|song| return song if song.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    if @@all.any?{|song| song.name == name} == true 
      return @@all.each{|song| return song if song.name == name}
    else 
      Song.new(name)
    end 
  end 
  
  def self.alphabetical
    @@all.sort{|song1,song2| song1 <=> song2}
    return @@all
  end 
  
  def new_from_filename(filename)
    arr = filename.split(/[-\.]/)
    arr[0] = @artist_name 
    arr[1] = @name
    Song.new(filename)
    @filename = filename
    
  end 
    
    def create_from_filename(filename)
      
  
end
