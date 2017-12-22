class MembersController < ApplicationController

  def index
    render json: Member.all
  end

  def create
    member = Member.create(member_params)
    render json: member if member.persisted?
  end

  private

  def member_params
    params.require(:member).permit(:name)
  end
end