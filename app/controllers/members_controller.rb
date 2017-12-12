class MembersController < ApplicationController

  def index
    members = Member.for_team(params[:team_id])
    render json: members
  end
end