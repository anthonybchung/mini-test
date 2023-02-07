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

ActiveRecord::Schema[7.0].define(version: 2023_02_07_085044) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_mes", force: :cascade do |t|
    t.text "paragraph"
    t.bigint "creator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_about_mes_on_creator_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsibilities", force: :cascade do |t|
    t.string "description"
    t.bigint "work_experience_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_experience_id"], name: "index_responsibilities_on_work_experience_id"
  end

  create_table "skill_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "creator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_skill_categories_on_creator_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "description"
    t.bigint "skill_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_category_id"], name: "index_skills_on_skill_category_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "svg"
    t.bigint "creator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_socials_on_creator_id"
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string "company"
    t.string "location"
    t.date "start_date"
    t.date "end_date"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "about_mes", "creators"
  add_foreign_key "responsibilities", "work_experiences"
  add_foreign_key "skill_categories", "creators"
  add_foreign_key "skills", "skill_categories"
  add_foreign_key "socials", "creators"
end
