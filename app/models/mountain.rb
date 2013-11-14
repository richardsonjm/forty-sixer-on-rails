class Mountain < ActiveRecord::Base
  belongs_to :trek


   def self.find_mountain_from_mountains_array(mountains_array)
    mountains_array.collect do |mountain|
      Mountain.find_by(:name => mountain)
    end
  end
end

