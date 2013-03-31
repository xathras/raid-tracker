class PlayerCharactersController < ApplicationController

  def create
    if player_character.save
      # player_character.update_from_remote!
      redirect_to player_characters_path
    else
      render action: 'new'
    end
  end

  def update
    if player_character.update_attributes( params[:player_character] )
      redirect_to player_characters_path
    else
      render action: 'edit'
    end
  end

  def update_profile
    player_character.update_from_remote!
    redirect_to raid_team_path( player_character.raid_team )
  end

protected
  def player_character
    @player_character ||= if params[:id]
      PlayerCharacter.find params[:id]
    else
      PlayerCharacter.new params[:player_character]
    end
  end

  def player_characters
    @player_characers ||= PlayerCharacter.page( params[:page] )
  end

  helper_method :player_characters , :player_character
end
