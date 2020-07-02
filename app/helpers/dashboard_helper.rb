module DashboardHelper
  def stock_price(symbol)
    StockQuote::Stock.quote(symbol).latest_price
  end

  def company_name(symbol)
    StockQuote::Stock.quote(symbol).company_name
  end
end
