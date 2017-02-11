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

ActiveRecord::Schema.define(version: 20170128120201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.text     "action"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_actions_on_story_id", using: :btree
  end

  create_table "briefs", force: :cascade do |t|
    t.text     "objective"
    t.text     "overview"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_briefs_on_project_id", using: :btree
  end

  create_table "briefs_positions", id: false, force: :cascade do |t|
    t.integer "brief_id"
    t.integer "position_id"
    t.index ["brief_id"], name: "index_briefs_positions_on_brief_id", using: :btree
    t.index ["position_id"], name: "index_briefs_positions_on_position_id", using: :btree
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

  create_table "continuations_actions", id: false, force: :cascade do |t|
    t.integer "continuation_id"
    t.integer "actions_id"
    t.index ["actions_id"], name: "index_continuations_actions_on_actions_id", using: :btree
    t.index ["continuation_id"], name: "index_continuations_actions_on_continuation_id", using: :btree
  end

  create_table "continuations_givens", id: false, force: :cascade do |t|
    t.integer "continuation_id"
    t.integer "given_id"
    t.index ["continuation_id"], name: "index_continuations_givens_on_continuation_id", using: :btree
    t.index ["given_id"], name: "index_continuations_givens_on_given_id", using: :btree
  end

  create_table "continuations_occurs", id: false, force: :cascade do |t|
    t.integer "continuation_id"
    t.integer "occure_id"
    t.index ["continuation_id"], name: "index_continuations_occurs_on_continuation_id", using: :btree
    t.index ["occure_id"], name: "index_continuations_occurs_on_occure_id", using: :btree
  end

  create_table "epics", force: :cascade do |t|
    t.text     "epic"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_epics_on_project_id", using: :btree
  end

  create_table "epics_positions", id: false, force: :cascade do |t|
    t.integer "epic_id"
    t.integer "position_id"
    t.index ["epic_id"], name: "index_epics_positions_on_epic_id", using: :btree
    t.index ["position_id"], name: "index_epics_positions_on_position_id", using: :btree
  end

  create_table "features", force: :cascade do |t|
    t.text     "feature"
    t.integer  "brief_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brief_id"], name: "index_features_on_brief_id", using: :btree
  end

  create_table "features_positions", id: false, force: :cascade do |t|
    t.integer "feature_id"
    t.integer "position_id"
    t.index ["feature_id"], name: "index_features_positions_on_feature_id", using: :btree
    t.index ["position_id"], name: "index_features_positions_on_position_id", using: :btree
  end

  create_table "givens", force: :cascade do |t|
    t.text     "given"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_givens_on_story_id", using: :btree
  end

  create_table "occurs", force: :cascade do |t|
    t.text     "occurs"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_occurs_on_story_id", using: :btree
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "position_value"
    t.string   "text"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "complete"
    t.integer  "client_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["client_id"], name: "index_projects_on_client_id", using: :btree
  end

  create_table "projects_positions", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "position_id"
    t.index ["position_id"], name: "index_projects_positions_on_position_id", using: :btree
    t.index ["project_id"], name: "index_projects_positions_on_project_id", using: :btree
  end

  create_table "projects_sectors", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "sector_id"
    t.index ["project_id"], name: "index_projects_sectors_on_project_id", using: :btree
    t.index ["sector_id"], name: "index_projects_sectors_on_sector_id", using: :btree
  end

  create_table "sectors", force: :cascade do |t|
    t.text     "sector"
    t.integer  "agile"
    t.integer  "waterfall"
    t.integer  "digital"
    t.integer  "creative"
    t.integer  "video"
    t.integer  "print"
    t.integer  "house_keeping"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stories", force: :cascade do |t|
    t.text     "asa"
    t.text     "iwant"
    t.text     "sothat"
    t.integer  "epic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["epic_id"], name: "index_stories_on_epic_id", using: :btree
  end

  create_table "stories_positions", id: false, force: :cascade do |t|
    t.integer "feature_id"
    t.integer "position_id"
    t.index ["feature_id"], name: "index_stories_positions_on_feature_id", using: :btree
    t.index ["position_id"], name: "index_stories_positions_on_position_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "actions", "stories"
  add_foreign_key "briefs", "projects"
  add_foreign_key "clients", "users"
  add_foreign_key "epics", "projects"
  add_foreign_key "features", "briefs"
  add_foreign_key "givens", "stories"
  add_foreign_key "occurs", "stories"
  add_foreign_key "projects", "clients"
  add_foreign_key "stories", "epics"
end
