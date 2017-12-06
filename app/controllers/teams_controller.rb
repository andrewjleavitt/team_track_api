class TeamsController < ApplicationController
  def index
    @teams = Team.all
    render json: @teams
  end

  def create
    team = Team.create(team_params)
    render json: team if team.persisted?
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
