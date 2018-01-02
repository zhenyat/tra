class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.references :pair, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
