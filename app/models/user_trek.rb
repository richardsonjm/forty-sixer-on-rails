class UserTrek < ActiveRecord::Base
  belongs_to :user
  belongs_to :trek
end
