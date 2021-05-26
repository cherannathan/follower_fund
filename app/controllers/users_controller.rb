class UsersController < ApplicationController
  def index
    @users = User.where(role: 'creator')

    # if params[:genre]
    #   @users = @users.where(genre: params[:query])
    # end
  end

  def show
    @creator = User.find(params[:id])
    @creator_projects = @creator.projects
    @ongoing_projects = @creator_projects.where(status: 'on going')
    @done_projects = @creator_projects.where(status: 'done')
    @investors = @creator.investors
  end
end
