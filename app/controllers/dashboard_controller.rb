class DashboardController < ApplicationController
  before_action :set_user, only: [:index]

  def create
    @stock = Stock.new(stock_params)
    @stock.user_id = current_user.id

    respond_to do |format|
      if StockQuote::Stock.quote(@stock.symbol).present? && @stock.save
        format.html { redirect_to dashboard_path, notice: 'Stock added.' }
        format.json { render :show, status: :created, location: dashboard_path }
      else
        format.html { render :new }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def set_user
    @user = current_user
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def stock_params
    params.require(:stocks).permit(:symbol, :background, :user_id)
  end
end
