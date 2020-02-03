class Song
  attr_accessor :name, :artist_name
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
      return @@all.each
  
end
