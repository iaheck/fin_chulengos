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

ActiveRecord::Schema[7.0].define(version: 2022_09_07_174812) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenge_personals", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.integer "checkpoint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkpoint_resources", id: false, force: :cascade do |t|
    t.integer "checkpoint_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkpoints", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkpoints_roadmaps", force: :cascade do |t|
    t.integer "roadmap_id"
    t.integer "checkpoint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors_roadmaps", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "roadmap_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_submit_personal_challenges", force: :cascade do |t|
    t.integer "submit_personal_challenge_id"
    t.text "comment"
    t.datetime "reviewed_at"
    t.datetime "approved_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roadmaps", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roadmaps_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "roadmap_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submit_personal_challenges", force: :cascade do |t|
    t.integer "assigment_id"
    t.string "submit_content"
    t.string "git_submit"
    t.datetime "submitted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_challenge_assigments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "challenge_personal_id"
    t.datetime "started_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_read_resources", force: :cascade do |t|
    t.integer "user_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "github_user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
