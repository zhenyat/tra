if Pair.count == 0
  info = ZtBtce.info

  if info.present?
    info['pairs'].each do |pair|
      values = pair.last

      Pair.create! name:       pair.first,           decimal_places: values['decimal_places'],
                   max_price:  values['max_price'],  min_price:      values['min_price'],
                   min_amount: values['min_amount'], hidden:         values['hidden'],
                   fee:        values['fee']
    end
  end
end

if Coin.count == 0
  Coin.create! pair_id: Pair.find_by(name: 'btc_usd').id, name: 'btc'
  Coin.create! pair_id: Pair.find_by(name: 'eth_usd').id, name: 'eth'
  Coin.create! pair_id: Pair.find_by(name: 'ltc_usd').id, name: 'ltc'
end
