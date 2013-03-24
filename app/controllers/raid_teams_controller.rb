class RaidTeamsController < ApplicationController
  

protected
  def raid_team
    @raid_team ||= if params[:id]
      RaidTeam.find params[:id]
    else
      RaidTeam.new params[:raid_team]
    end
  end

  def raid_teams
    @raid_teams ||= RaidTeams.page( params[:page] )
  end

  helper_method :raid_team , :raid_teams
end
