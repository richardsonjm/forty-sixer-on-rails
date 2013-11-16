class Trek < ActiveRecord::Base
  has_many :mountains, :through => :trek_mountains

  def self.find_trek_from_treks_array(treks_array)
    treks_array.collect do |trek|
      Trek.find_by(:name => trek)
    end
  end

end
