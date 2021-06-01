class OrdersController < ApplicationController

  def create
    investment = Investment.find(params[:investment_id])
    @projects = Project.where(user: User.find(investment.project.user.id))
    @investments = Investment.where(user: current_user, project: @projects)
    order = Order.create!(investment: investment, investment_sku: User.find(investment.project.user.id), amount: @investments.pluck(:price_cents).sum*100, state: 'pending', user: current_user)
    authorize order

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: investment.sku,
        # images: [teddy.photo_url],
        amount: (@investments.pluck(:price_cents).sum * 100 / 1.22).to_i,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    @investments.update_all(status: 'done')
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
    authorize @order
  end
end
