class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    # raise
    @investments = Investment.where(status: "pending", user: current_user)
    @investments.update_all(status: 'done')
    authorize @order
    @order.update(state: 'done')
    redirect_to profile_path
  end
end
