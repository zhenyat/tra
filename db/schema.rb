# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180118145413) do

  create_table "btc_trades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "kind", limit: 1
    t.decimal "price", precision: 15, scale: 5
    t.decimal "amount", precision: 15, scale: 8
    t.integer "tid"
    t.integer "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "pair_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pair_id"], name: "index_coins_on_pair_id"
  end

  create_table "crono_jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "job_id", null: false
    t.text "log", limit: 4294967295
    t.datetime "last_performed_at"
    t.boolean "healthy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_crono_jobs_on_job_id", unique: true
  end

  create_table "eth_trades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "kind", limit: 1
    t.decimal "price", precision: 15, scale: 5
    t.decimal "amount", precision: 15, scale: 8
    t.integer "tid"
    t.integer "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ltc_trades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "kind", limit: 1
    t.decimal "price", precision: 15, scale: 5
    t.decimal "amount", precision: 15, scale: 8
    t.integer "tid"
    t.integer "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pairs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "decimal_places"
    t.decimal "min_price", precision: 10, scale: 5
    t.integer "max_price"
    t.decimal "min_amount", precision: 10, scale: 5
    t.integer "hidden", limit: 1
    t.decimal "fee", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "coin_id"
    t.integer "kind", limit: 1, default: 0, null: false
    t.decimal "depo", precision: 10, null: false
    t.decimal "last", precision: 10, null: false
    t.float "start", limit: 24, default: 2.0, null: false
    t.float "overlay", limit: 24, default: 15.0, null: false
    t.float "martingale", limit: 24
    t.integer "orders", default: 4, null: false
    t.float "profit", limit: 24, default: 5.0, null: false
    t.integer "scale", limit: 1, default: 0, null: false
    t.decimal "stop_loss", precision: 10, null: false
    t.integer "status", limit: 1, default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coin_id"], name: "index_runs_on_coin_id"
  end

  add_foreign_key "coins", "pairs"
  add_foreign_key "runs", "coins"
end
