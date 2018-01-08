class GetLastJob < ApplicationJob
  queue_as :default

  include DataPro
  
  def perform
    Coin.all.each do |coin|
      pair_name  = coin.pair.name      
      last_trades = get_last_trades pair_name

    end
  end
end
