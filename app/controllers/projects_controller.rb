class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def index
  end

end
