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

ActiveRecord::Schema.define(version: 20150513004544) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "albums", force: :cascade do |t|
    t.string   "title",                 limit: 255,   null: false
    t.text     "description",           limit: 65535
    t.date     "original_release_date"
    t.string   "permalink",             limit: 255
    t.integer  "artist_id",             limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree
  add_index "albums", ["permalink"], name: "index_albums_on_permalink", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.text     "description", limit: 65535
    t.string   "permalink",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "artists", ["permalink"], name: "index_artists_on_permalink", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "title",                 limit: 255,   null: false
    t.text     "description",           limit: 65535
    t.date     "original_release_date"
    t.string   "permalink",             limit: 255
    t.string   "file_uri",              limit: 255
    t.string   "genre",                 limit: 255
    t.string   "theme",                 limit: 255
    t.string   "tag",                   limit: 255
    t.time     "length"
    t.integer  "album_id",              limit: 4
    t.integer  "artist_id",             limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["permalink"], name: "index_songs_on_permalink", using: :btree

  create_table "vs_database_diagrams", id: false, force: :cascade do |t|
    t.string   "name",     limit: 80
    t.text     "diadata",  limit: 65535
    t.string   "comment",  limit: 1022
    t.text     "preview",  limit: 65535
    t.string   "lockinfo", limit: 80
    t.datetime "locktime",               null: false
    t.string   "version",  limit: 80
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "songs", "albums"
  add_foreign_key "songs", "artists"
end
