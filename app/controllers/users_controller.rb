class UsersController < ApplicationController

  def index
    @users_role = User.where(role: 'creator')

    if params[:genre]
      @users = @users_role.where(genre: params[:query])
    end
  end


end
