require 'pry'

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
    song = self.new
    Song.all << song      #or song.save
    song 
  end
  
  def self.new_by_name(name)
    song = self.new       #or Song.create to add song to array
    song.name = name 
    song
  end 
  
  # def self.create_by_name(name)
  #   song = self.new_by_name(name) #or self.new_by_name(name)
  #   song.save                     #not Song.save << song
  #   song                          #Song.save overwrites array?
  #   # binding.pry
  # end 
  
  # def self.find_by_name(name)
  #   #binding.pry
  #   array = self.all              #self.all == Song.all == @@all?
  #   array.each do |song_obj|      
  #     if song_obj.name == name
  #       return song_obj
  #     end 
  #   end 
  #   #binding.pry 
  #   false
  # end 
  
  # def self.find_or_create_by_name(name)
  #   # binding.pry
  #   Song.find_by_name(name) || Song.create_by_name(name)
  # end 
  
  def self.alphabetical 
    Song.all.select |song|
      binding.pry  
    end
  end 
  
  # def self.new_from_filename
    
  # end
  
  def self.destroy_all 
    @@all.clear
  end 
end

