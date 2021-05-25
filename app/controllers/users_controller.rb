class UsersController < ApplicationController

  def index
    @users = User.where(role: 'creator')

    if params[:genre]
      @users = @users.where(genre: params[:query])
    end
  end
end
