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

ActiveRecord::Schema[7.0].define(version: 2023_07_24_104158) do
  create_table "body_parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "record_kls"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "defined_items", force: :cascade do |t|
    t.integer "template_id", null: false
    t.integer "exercise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_defined_items_on_exercise_id"
    t.index ["template_id"], name: "index_defined_items_on_template_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "template_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["template_id"], name: "index_events_on_template_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "category_id", null: false
    t.integer "body_part_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_part_id"], name: "index_exercises_on_body_part_id"
    t.index ["category_id"], name: "index_exercises_on_category_id"
    t.index ["user_id"], name: "index_exercises_on_user_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_templates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workout_records", force: :cascade do |t|
    t.integer "reps"
    t.integer "weight"
    t.integer "duration"
    t.string "type"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "distance"
    t.index ["user_id"], name: "index_workout_records_on_user_id"
  end

  add_foreign_key "categories", "users"
  add_foreign_key "defined_items", "exercises"
  add_foreign_key "defined_items", "templates"
  add_foreign_key "events", "templates"
  add_foreign_key "exercises", "body_parts"
  add_foreign_key "exercises", "categories"
  add_foreign_key "exercises", "users"
  add_foreign_key "templates", "users"
  add_foreign_key "workout_records", "users"
end
