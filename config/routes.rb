Rails.application.routes.draw do
#  get 'trades/add_trades'
  get 'trades/index'
  get 'trades/show_trades'
  get 'trades/candlesticks'
  get 'trades/create_cash'
  get 'trades/update_cash'
  
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
