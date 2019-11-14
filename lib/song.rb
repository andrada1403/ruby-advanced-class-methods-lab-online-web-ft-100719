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
    song=self.new
    song.save
    song
  end
  def self.new_by_name(name)
    song=self.new
    #binding.pry
    song.name=name
    song
  end
  def self.create_by_name(name)
    song=self.new_by_name(name)
    song.save
    song
  end
  def self.find_by_name(name)
    self.all.find do |i|
      if i.name == name
       return i
      end
    end
  end
  def self.find_or_create_by_name(song_name)
    if name==song_name
      self.find_by_name(song_name)
    else
      self.create_by_name(song_name)
    end
  end
end
