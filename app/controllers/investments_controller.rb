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

  def checkout
    @investments = Investment.where(status: 'pending', user: current_user)
    authorize @investments.first
  end

  def destroy
    @investments = Investment.find(params[:id])
    authorize(@investment)
      @investment.destroy
      respond_to do |format|
        format.html { redirect_to checkout_path, notice: 'investment was successfully destroyed.' }
        format.json { head :no_content }
    end
  end
  # def show
  # @investment = Investment.find(params[:id])
  # end

  private

  def investment_params
    params.require(:investment).permit(:price_cents)
  end
end

