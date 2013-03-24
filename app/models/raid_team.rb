class RaidTeam < ActiveRecord::Base
  attr_accessible :name
  
  has_many :player_characters
end
