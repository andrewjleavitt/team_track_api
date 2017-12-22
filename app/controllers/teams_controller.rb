class TeamsController < ApplicationController
  def index
    render json: Team.all
  end

  def create
    team = Team.create(team_params)
    if team.persisted?
      render json: team
    else
      render json: "Bad Thing", status: 400
    end
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
