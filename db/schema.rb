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

ActiveRecord::Schema.define(version: 20150516185837) do

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

  create_table "genres", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title",                 limit: 255,   null: false
    t.text     "description",           limit: 65535
    t.date     "original_release_date"
    t.string   "permalink",             limit: 255
    t.string   "file_uri",              limit: 255
    t.string   "theme",                 limit: 255
    t.string   "tag",                   limit: 255
    t.string   "length",                limit: 255
    t.integer  "album_id",              limit: 4
    t.integer  "artist_id",             limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "genre_id",              limit: 4
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["genre_id"], name: "index_songs_on_genre_id", using: :btree
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
  add_foreign_key "songs", "genres"
end
