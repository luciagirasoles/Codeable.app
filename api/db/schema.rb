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

ActiveRecord::Schema.define(version: 2019_07_16_195821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.bigint "modulo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["modulo_id"], name: "index_lessons_on_modulo_id"
  end

  create_table "mini_assignments", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_mini_assignments_on_lesson_id"
  end

  create_table "modulos", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sublessons", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "section"
    t.bigint "lesson_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_sublessons_on_lesson_id"
    t.index ["tag_id"], name: "index_sublessons_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "token"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["token"], name: "index_users_on_token"
  end

  add_foreign_key "lessons", "modulos"
  add_foreign_key "mini_assignments", "lessons"
  add_foreign_key "sublessons", "lessons"
  add_foreign_key "sublessons", "tags"
end