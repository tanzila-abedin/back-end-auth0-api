# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_18_080728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "laptops", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.string "processor"
    t.string "memory"
    t.string "storage"
    t.string "graphics"
    t.string "operating_system"
    t.string "battery_life"
    t.string "price"
    t.string "display"
    t.string "amazon"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "laptop_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_email"
    t.string "laptop_model"
    t.index ["laptop_id"], name: "index_reviews_on_laptop_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_sub"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
