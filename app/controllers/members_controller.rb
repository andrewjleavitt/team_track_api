class MembersController < ApplicationController

  def index
    members = Member.for_team(params[:team_id])
    render json: members
  end

  def create
    member = Member.create({name: member_params[:name], team_id: params[:team_id]})
    render json: member if member.persisted?
  end

  private

  def member_params
    params.require(:member).permit(:name)
  end
end