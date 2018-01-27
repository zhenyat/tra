class CreateRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :runs do |t|
      t.references :coin,       foreign_key: true
      t.integer    :kind,       null: false, default: 0, limit: 1
      t.decimal    :depo,       null: false
      t.decimal    :last,       null: false
      t.float      :start,      null: false, default: 2.0
      t.float      :overlay,    null: false, default: 15.0
      t.float      :martingale
      t.integer    :orders,     null: false, default: 4
      t.float      :profit,     null: false, default: 5.0
      t.integer    :scale,      null: false, default: 0, limit: 1
      t.decimal    :stop_loss,  null: false
      t.integer    :status,     null: false, default: 0, limit: 1

      t.timestamps
    end
  end
end