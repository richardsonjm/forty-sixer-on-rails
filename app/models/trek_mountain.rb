class TrekMountain < ActiveRecord::Base
  belongs_to :trek
  belongs_to :mountain
end
