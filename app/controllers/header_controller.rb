class HeaderController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.all
  end
  def product_page
    @products = Product.where(category_id: params[:category_id])
    @order_item = current_order.order_items.new
  end
end
