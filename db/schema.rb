# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140123224334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree

  create_table "epics", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: true do |t|
    t.text     "summary"
    t.text     "detail"
    t.integer  "user_id"
    t.string   "points"
    t.integer  "position"
    t.integer  "epic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stories", ["epic_id"], name: "index_stories_on_epic_id", using: :btree
  add_index "stories", ["user_id"], name: "index_stories_on_user_id", using: :btree

  create_table "story_tags", force: true do |t|
    t.integer  "story_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "story_tags", ["story_id"], name: "index_story_tags_on_story_id", using: :btree
  add_index "story_tags", ["tag_id"], name: "index_story_tags_on_tag_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "story_id"
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["story_id"], name: "index_tasks_on_story_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
