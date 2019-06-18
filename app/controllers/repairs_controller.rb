class RepairsController < ApplicationController
  def index
    @q = Repair.ransack(params[:q])
    @repair = @q.result(distinct: true)
  end

  def show
    @repair = Repair.find(params[:id])
  end
end
