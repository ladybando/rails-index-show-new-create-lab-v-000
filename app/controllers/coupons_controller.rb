
class CouponsController < ApplicationController
  
      def index
        @coupons = Coupon.all
    end
    
    def new
    end
    
    def create
        @coupon = Coupon.new(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    
end