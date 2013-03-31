class RaidTeamsController < ApplicationController

  def create
    if raid_team.save
      redirect_to raid_teams_path
    else
      render action: 'new'
    end
  end

  def destroy
    raid_team.destroy
    respond_to do |format|
      format.html { redirect_to raid_teams_path }
      format.js { render text: "window.location = '#{raid_teams_path}'" }
    end
  end

protected
  def raid_team
    @raid_team ||= if params[:id]
      RaidTeam.find params[:id]
    else
      RaidTeam.new params[:raid_team]
    end
  end

  def raid_teams
    @raid_teams ||= RaidTeam.page( params[:page] )
  end

  helper_method :raid_team , :raid_teams
end
