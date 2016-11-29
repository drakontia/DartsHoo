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

ActiveRecord::Schema.define(version: 5) do

  create_table "games", force: :cascade do |t|
    t.string   "gametype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "result"
    t.integer  "regnum"
    t.integer  "player1st"
    t.integer  "player2nd"
    t.integer  "player3rd"
    t.integer  "player4th"
  end

  create_table "reg01s", force: :cascade do |t|
    t.integer  "userid"
    t.integer  "gameid"
    t.integer  "regno"
    t.string   "gametype"
    t.integer  "gamestats"
    t.integer  "roundnum"
    t.integer  "number01"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regcrickets", force: :cascade do |t|
    t.integer  "userid"
    t.integer  "gameid"
    t.integer  "regno"
    t.string   "gametype"
    t.integer  "gamestats"
    t.integer  "roundnum"
    t.integer  "mark20"
    t.integer  "mark19"
    t.integer  "mark18"
    t.integer  "mark17"
    t.integer  "mark16"
    t.integer  "mark15"
    t.integer  "markbull"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "regid"
    t.integer  "roundno"
    t.string   "shot1st"
    t.string   "shot2nd"
    t.string   "shot3rd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "dartsliveid"
    t.integer  "rating"
    t.integer  "cricketstats"
    t.integer  "stats01"
    t.date     "registered_at"
    t.datetime "updated_at",    null: false
    t.datetime "created_at",    null: false
  end

end
