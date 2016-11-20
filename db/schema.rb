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

ActiveRecord::Schema.define(version: 20161120035053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "briefs", force: :cascade do |t|
    t.string   "Project"
    t.text     "objective"
    t.text     "overview"
    t.string   "status"
    t.integer  "status_value"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["project_id"], name: "index_briefs_on_project_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.text     "business_area"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_clients_on_user_id", using: :btree
  end

  create_table "continuations", force: :cascade do |t|
    t.text     "continuation"
    t.integer  "story_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["story_id"], name: "index_continuations_on_story_id", using: :btree
  end

  create_table "epics", force: :cascade do |t|
    t.text     "as"
    t.text     "iwant"
    t.text     "sothat"
    t.string   "status"
    t.integer  "status_value"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["project_id"], name: "index_epics_on_project_id", using: :btree
  end

  create_table "features", force: :cascade do |t|
    t.text     "feature"
    t.integer  "epic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["epic_id"], name: "index_features_on_epic_id", using: :btree
  end

  create_table "givens", force: :cascade do |t|
    t.text     "given"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_givens_on_story_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "status"
    t.integer  "status_value"
    t.string   "type"
    t.integer  "client_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["client_id"], name: "index_projects_on_client_id", using: :btree
  end

  create_table "stories", force: :cascade do |t|
    t.text     "story"
    t.integer  "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_stories_on_feature_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "briefs", "projects"
  add_foreign_key "clients", "users"
  add_foreign_key "continuations", "stories"
  add_foreign_key "epics", "projects"
  add_foreign_key "features", "epics"
  add_foreign_key "givens", "stories"
  add_foreign_key "projects", "clients"
  add_foreign_key "stories", "features"
end
