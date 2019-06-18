class DeliveriesController < ApplicationController
  def index
    @q = Delivery.ransack(params[:q])
    @delivery = @q.result(distinct: true)
  end

  def show
    @delivery = Delivery.find(params[:id])
  end
end
