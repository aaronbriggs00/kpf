# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_08_230017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actor_locations", force: :cascade do |t|
    t.integer "actor_id"
    t.integer "location_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.integer "group_id"
    t.string "personality"
    t.integer "stat0"
    t.integer "stat1"
    t.integer "stat2"
    t.integer "stat3"
    t.integer "stat4"
    t.integer "stat5"
    t.integer "stat6"
    t.integer "stat7"
    t.integer "stat8"
    t.integer "stat9"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "birthday"
  end

  create_table "event_actors", force: :cascade do |t|
    t.integer "actor_id"
    t.integer "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "date"
    t.integer "location_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "debut_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image_url"
    t.integer "actor_id"
    t.integer "event_id"
    t.integer "location_id"
    t.integer "group_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "group_id"
    t.string "title"
    t.text "description"
    t.boolean "is_public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
