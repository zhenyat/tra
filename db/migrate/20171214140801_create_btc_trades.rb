class CreateBtcTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :btc_trades do |t|
      t.integer  :kind,   limit: 1
      t.decimal  :price,  precision: 15, scale: 5
      t.decimal  :amount, precision: 15, scale: 8
      t.integer  :tid
      t.integer  :timestamp

      t.timestamps
    end
  end
end
