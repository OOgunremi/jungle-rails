class Admin::DashboardController < ApplicationController


  before_action :authorize

  def show
    @product_count = Product.all.size
    @category_count = Category.all.size
  end
end