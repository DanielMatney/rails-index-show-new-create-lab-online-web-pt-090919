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
    @coupon = Coupon.new
    @coupon.title = params[:title]
    @coupon.description = params[:description]
    @coupon.save
    redirect_to post_path(@coupon)
  end
  
  
  
  
  
  
end