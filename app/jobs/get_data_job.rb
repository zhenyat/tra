class GetDataJob < ApplicationJob
  queue_as :default

  include DataPro
  
  def perform
    Coin.all.each do |coin|
      pair_name  = coin.pair.name      
      add_trades          pair_name, 2000
      update_candlesticks pair_name
#      store_last_trades   pair_name
    end
  end
end

