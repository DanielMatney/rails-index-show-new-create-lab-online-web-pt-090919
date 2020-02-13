class CouponsController < ApplicationController
  
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupons = Coupon.new
  end

  # add create method here
  def create
    @coupons = Coupon.new
    @coupons.coupon_code = params[:coupon][:coupon_code]
    @coupons.store = params[:coupon][:store]
    @coupons.save
    redirect_to coupon_path(@coupons)
  end
  
  
  
  
  
  
end