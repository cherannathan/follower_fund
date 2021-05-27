class InvestmentsController < ApplicationController

  # def new
  #   @investment = Investment.new
  # end

  def index
    @investment = Investment.where(status: 'pending')
    authorize @investment
  end

  # def create
  #   @investment = Investment.new(investment_params)
  #   @investment.save

  # end

  # def show
  # @investment = Investment.find(params[:id])
  # end

#   private

#   def investment_params
#     params.require(:investment).permit(:amount, :status)
#   end
# end
end
