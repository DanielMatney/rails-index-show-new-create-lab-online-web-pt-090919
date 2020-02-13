class CouponsController < ApplicationController
  
  def index
    @coupons = Coupon.all
  end

  def show
    @coupons = Coupon.find(params[:id])
  end

  def new
    @coupons = Coupon.new
  end

  # add create method here
  def create
    @Coupon = Post.new
    @Coupon.title = params[:title]
    @Coupon.description = params[:description]
    @Coupon.save
    redirect_to post_path(@Coupon)
  end
  
  
  
  
  
  
end