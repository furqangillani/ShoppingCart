class CheckoutsController < ApplicationController
  before_action :authenticate_user!

  def create
    product = Product.find_by_id(params[:id])
    @session = Stripe::Checkout::Session.create({
                                                  payment_method_types: ['card'],
                                                  line_items: [{
                                                                 name: product.name,
                                                                 price: product.price,
                                                                 currency: "usd",
                                                                 quantity: 1
                                                               }],
                                                  mode: 'payment',
                                                  success_url: 'root_url',
                                                  cancel_url: 'root_url',
                                                })
    respond_to do | format|
      format.js
    end
  end

  def show
    current_user.set_payment_processor :stripe
    current_user.payment_processor.customer

    @checkout_session = current_user
      .payment_processor
      .checkout(
        mode: "payment",
        line_items: "price_1MGVoTCbQ0LAP6KFobGQ75ex",
        success_url: checkout_success_url,
      )
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @line_items = Stripe::Checkout::Session.list_line_items(params[:session_id])
  end
end
