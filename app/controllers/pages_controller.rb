class PagesController < ApplicationController
  include DataPro
  
  def home
    @domain = ZtBtce.get_domain
    @key    = ZtBtce.get_key
    
    asterisks =''
    for i in (0..59)
      asterisks[i]= '*'
    end
    @secret = "#{asterisks}#{ZtBtce.get_secret[-4..-1]}"
    
    @tickers = []
    
    Coin.all.each do |coin|
      pair_name = coin.pair.name
      @tickers << get_ticker(pair_name)
      
      model          = set_model_name pair_name
      @last_trades    = []
      @last_trades[0] = model.last_sold
      @last_trades[1] = model.last_bought
    end
  end
end

