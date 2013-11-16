class Trek < ActiveRecord::Base
  has_many :trek_mountains
  has_many :mountains, :through => :trek_mountains


  def mountains=(mountains_array)
    Mountain.find_mountain_from_mountains_array(mountains_array).each do |mountain|
      self.add_mountain(mountain)
    end
  end

  def add_mountain(mountain)
    self.trek_mountains.build(:mountain => mountain)
  end


  def self.find_trek_from_treks_array(treks_array)
    treks_array.collect do |trek|
      Trek.find_by(:name => trek)
    end
  end

end
