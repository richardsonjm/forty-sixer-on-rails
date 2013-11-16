class Mountain < ActiveRecord::Base
  has_many :trek_mountains
  has_many :treks, :through => :trek_mountains

   def self.find_mountain_from_mountains_array(mountains_array)
    mountains_array.collect do |mountain|
      Mountain.find_by(:name => mountain)
    end
  end
end

