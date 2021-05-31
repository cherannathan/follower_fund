class InvestmentsController < ApplicationController
  before_action :skip_authorization

  def new
    @investment = Investment.new
  end

  def index
    @investment = Investment.where(status: 'pending')
    authorize @investment
  end

  def create
    @investment = Investment.new(investment_params)
    @investment.price_cents = params[:investment][:price_cents].to_i
    @investment.project = Project.find(params[:project_id])
    @investment.user = current_user
    @investment.status = "pending"
    if @investment.save
      redirect_to checkout_path
    else
      render "projects/show"
    end
    authorize @investment
  end

  def update
    @investment = Investment.find(params[:id])
    @investment.update(investment_params)
  end

  def checkout
    @investments = policy_scope(Investment).where(status: 'pending', user: current_user)
  end

  def destroy
    @investment = Investment.find(params[:id])
    authorize(@investment)
    @investment.destroy
    redirect_to checkout_path, notice: 'investment was successfully destroyed.'
  end

  def payment
    @investments = Investment.where(status: 'pending', user: current_user)
    @investments.update_all(status: 'done')
    redirect_to users_path
  end
  # def show
  # @investment = Investment.find(params[:id])
  # end

  private

  def investment_params
    params.require(:investment).permit(:price_cents, :user_thankyou)
  end
end

