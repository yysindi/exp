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

ActiveRecord::Schema.define(version: 2021_06_07_153244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "user_id", null: false
    t.string "status"
    t.date "date_applied"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_applications_on_job_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "exp_scores", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "job_id"
    t.string "industry"
    t.integer "exp_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_exp_scores_on_job_id"
    t.index ["user_id"], name: "index_exp_scores_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "industry"
    t.string "title"
    t.text "description"
    t.string "logo"
    t.string "website"
    t.boolean "paid"
    t.integer "compensation"
    t.date "start_date"
    t.date "end_date"
    t.boolean "accepting_applications"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "completed", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "profile_description"
    t.string "profile_img"
    t.string "linked_in"
    t.string "desired_industry"
    t.string "twitter_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "jobs"
  add_foreign_key "applications", "users"
  add_foreign_key "exp_scores", "jobs"
  add_foreign_key "exp_scores", "users"
end
