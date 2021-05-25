class ProjectsController < ApplicationController
  def show
    @invest = Invest.find(params[:id])
  end
end
