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

ActiveRecord::Schema.define(version: 2019_06_28_023758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "char_skills", force: :cascade do |t|
    t.integer "level", default: 0
    t.bigint "skill_id"
    t.bigint "skill_tree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_char_skills_on_skill_id"
    t.index ["skill_tree_id"], name: "index_char_skills_on_skill_tree_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name", default: "Elody"
    t.string "gender", default: "female"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_trees", force: :cascade do |t|
    t.bigint "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_skill_trees_on_character_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "sub_category"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "char_skills", "skill_trees"
  add_foreign_key "char_skills", "skills"
  add_foreign_key "skill_trees", "characters"
end
