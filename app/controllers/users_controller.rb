class UsersController < ApplicationController
  def index
    @users = User.where(role: 'creator')
    @genre = params[:genre]
    if @genre.present?
      @users = @users.joins(projects: :genres).where('genres.name = ?', @genre)
      # User.joins(:projects, :genres).where(users: {role: 'creator'}, projects: { 'projects.genre.name = ?', params[:genre] })
    end
  end

  def show
    @creator = User.find(params[:id])
  end
end
