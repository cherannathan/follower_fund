class UsersController < ApplicationController
  def index
    @users = User.where(role: 'creator')
    @genre = params[:genre]
    if @genre.present?
      @users = @users.joins(projects: :genres).where('genres.name = ?', @genre)
      # @users = User.joins(projects: :genres).where(users: {role: 'creator'}, projects: { 'projects.genre.name = ?', params[:genre] })
    end
  end

  def show
    @creator = User.find(params[:id])
    @creator_projects = @creator.projects
    @ongoing_projects = @creator_projects.where(status: 'fundraising')
    @done_projects = @creator_projects.where(status: 'done')
    @investors = @creator.investors
    @creator_bio = @creator.bio

  end
end
