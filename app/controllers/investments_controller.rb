class InvestmentsController < ApplicationController

def new
  @investment = Investment.new
end

  def index
    @investment = Investment.where(status: 'pending')
    authorize @investment
  end

  def create
    @investment = Investment.new(investment_params)
    @investment.price_cents = @investment.price_cents*100
    @investment.project = Project.find(params[:project_id])
    @investment.user = current_user
    @investment.save
    authorize @investment
    redirect_to project_path @investment.project
  end

  def checkout
    @investments = Investment.where(status: 'pending')
    authorize @investments.first
  end
  # def show
  # @investment = Investment.find(params[:id])
  # end

  private

  def investment_params
    params.require(:investment).permit(:price_cents, :status)
  end
end

