class PlayerCharacter < ActiveRecord::Base
  API_BASE_URL = 'http://us.battle.net/api/wow/character'.freeze
  attr_accessible :average_ilevel, :name, :notes, :raid_team_id, :realm

  belongs_to :raid_team

  def update_from_remote!
    response = HTTParty.get("#{API_BASE_URL}/#{realm}/#{name}?fields=items")
    Rails.logger.debug { response.body }
    character_data = JSON.parse( response.body )
    self.average_ilevel = character_data['items']['averageItemLevelEquipped']
    save!
  end
end
