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

ActiveRecord::Schema.define(version: 0) do

  create_table "songs", force: :cascade do |t|
    t.string   "title",                 limit: 255,   null: false
    t.text     "description",           limit: 65535
    t.date     "original_release_date"
    t.string   "permalink",             limit: 255
    t.string   "file_uri",              limit: 255
    t.integer  "tags_id",               limit: 4
    t.integer  "theme_id",              limit: 4
    t.integer  "genre_id",              limit: 4
    t.integer  "album_id",              limit: 4
    t.integer  "artist_id",             limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["genre_id"], name: "index_songs_on_genre_id", using: :btree
  add_index "songs", ["permalink"], name: "index_songs_on_permalink", using: :btree
  add_index "songs", ["tags_id"], name: "index_songs_on_tags_id", using: :btree
  add_index "songs", ["theme_id"], name: "index_songs_on_theme_id", using: :btree

end
