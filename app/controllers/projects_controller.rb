class ProjectsController < ApplicationController

skip_before_action :authenticate_user!, only: :show

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def index
  end

end


