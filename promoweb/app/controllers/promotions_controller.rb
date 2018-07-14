class PromotionsController < ApplicationController

  def new
    @promotion = Promotion.new
  end

  def create
    @promotion = Promotion.new(promo_params)
    if @promotion.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def show
    @promotions = Promotion.all
  end

  def promo_params
    permit(:promotion).require(:text)
  end

end
