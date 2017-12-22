class TeamAssignmentsController < ApplicationController

  def index
    render json: TeamAssignment.where(member_id: params[:member_id])
  end

  def create
    team_assignment = TeamAssignment.create(team_assignment_params)
    if team_assignment.persisted?
      render json: team_assignment
    else
      render json: team_assignment.errors, status: :unprocessable_entity
    end
  end

  private

  def team_assignment_params
    params.require(:team_assignment).permit(:team_id, :member_id)
  end
end