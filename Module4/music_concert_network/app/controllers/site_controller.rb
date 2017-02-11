class SiteController < ApplicationController
  def home
    @concerts_today = Concert.today
    @concerts_month = Concert.month
  end
  def price

  end
  def results_by_price
    @concerts_price = Concert.price(params[:price])
  end
end
