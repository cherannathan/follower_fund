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
    @investment.price_cents = params[:investment][:price_cents].to_i * 100
    @investment.project = Project.find(params[:project_id])
    @investment.user = current_user
    @investment.status = "pending"
    if Investment.count > 1
      @investment.sku = "investment-#{Investment.last.id.to_i+1}"
    else
      @investment.sku = "investment-#{1}"
    end
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
    investment = Investment.where(status: "pending", user: current_user).first
    @order = Order.create!(investment: investment, investment_sku: User.find(investment.project.user.id), amount: @investments.pluck(:price_cents).sum/100, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: investment.sku,
        amount: (@order.amount * 100 / 1.22).to_i,
        currency: 'eur',
        quantity: 1
      }],
      success_url: new_order_payment_url(@order),
      cancel_url: order_url(@order)
    )

    @order.update(checkout_session_id: session.id)
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

