class User < ActiveRecord::Base
  has_many :treks, :through => :user_treks
  has_many :mountains, :through => :user_mountains
  has_many :user_mountains
  has_many :user_treks


  def mountains=(mountains_array)
    Mountain.find_mountain_from_mountains_array(mountains_array).each do |mountain|
      self.add_mountain(mountain)
    end
  end

  def add_mountain(mountain)
    self.user_mountains.build(:mountain => mountain)
  end

  def treks=(treks_array)
    Trek.find_trek_from_treks_array(treks_array).each do |trek|
      self.add_trek(trek)
      trek.mountains.each do |mountain|
        self.add_mountain(mountain)
      end
    end
  end

  def add_trek(trek)
    self.user_treks.build(:trek => trek)
  end

  def add_mountain(mountain)
    self.user_mountains.build(:mountain => mountain)
  end

end
