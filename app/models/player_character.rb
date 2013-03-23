class PlayerCharacter < ActiveRecord::Base
  attr_accessible :average_ilevel, :name, :notes, :raid_team_id, :realm
end
