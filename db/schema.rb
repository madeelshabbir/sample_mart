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

ActiveRecord::Schema.define(version: 2022_10_11_080726) do

  create_table "products", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.integer "quantity", default: 0, null: false
    t.integer "shop_id"
    t.index ["shop_id"], name: "index_products_on_shop_id"
    t.index ["title"], name: "index_products_on_title", unique: true
  end

  create_table "shops", force: :cascade do |t|
    t.string "name", null: false
  end

end
