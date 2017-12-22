class ProjectsController < ApplicationController
  def index
    render json: Project.all
  end

  def create
    project = Project.create(project_params)
    render json: project if project.persisted?
  end

  private

  def project_params
    params.require(:project).permit(:name, :status, :health)
  end
end