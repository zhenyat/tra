class GetDataJob < ApplicationJob
  queue_as :default

  include DataPro
  
  def perform
    Coin.all.each do |coin|
      add_trades coin.pair.name, 200
    end
    puts "=====  #{Time.now.strftime("%H:%M:%S")} #{BtcTrade.count} | #{EthTrade.count}  | #{LtcTrade.count}"
  end
end

