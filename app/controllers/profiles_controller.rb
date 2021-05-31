class ProfilesController < ApplicationController
  skip_after_action :verify_authorized

  def show
    # @investment.user = Investment.where(user: current_user)
    @investments = current_user.investments.includes(:project)
  end
end
