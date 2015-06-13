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

ActiveRecord::Schema.define(version: 20150613014130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "title",                 null: false
    t.text     "description"
    t.date     "original_release_date"
    t.string   "permalink"
    t.integer  "artist_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree
  add_index "albums", ["permalink"], name: "index_albums_on_permalink", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.string   "permalink"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "artists", ["permalink"], name: "index_artists_on_permalink", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_songs", id: false, force: :cascade do |t|
    t.integer "song_id",  null: false
    t.integer "genre_id", null: false
  end

  add_index "genres_songs", ["genre_id", "song_id"], name: "index_genres_songs_on_genre_id_and_song_id", using: :btree
  add_index "genres_songs", ["song_id", "genre_id"], name: "index_genres_songs_on_song_id_and_genre_id", using: :btree

  create_table "moods", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "moods", ["title"], name: "index_moods_on_title", unique: true, using: :btree

  create_table "moods_songs", id: false, force: :cascade do |t|
    t.integer "song_id", null: false
    t.integer "mood_id", null: false
  end

  add_index "moods_songs", ["mood_id", "song_id"], name: "index_moods_songs_on_mood_id_and_song_id", using: :btree
  add_index "moods_songs", ["song_id", "mood_id"], name: "index_moods_songs_on_song_id_and_mood_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "title",                 null: false
    t.text     "description"
    t.date     "original_release_date"
    t.string   "permalink"
    t.string   "file_uri"
    t.string   "length"
    t.integer  "album_id"
    t.integer  "artist_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["permalink"], name: "index_songs_on_permalink", using: :btree

  create_table "songs_themes", id: false, force: :cascade do |t|
    t.integer "song_id",  null: false
    t.integer "theme_id", null: false
  end

  add_index "songs_themes", ["song_id", "theme_id"], name: "index_songs_themes_on_song_id_and_theme_id", using: :btree
  add_index "songs_themes", ["theme_id", "song_id"], name: "index_songs_themes_on_theme_id_and_song_id", using: :btree

  create_table "themes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "themes", ["title"], name: "index_themes_on_title", unique: true, using: :btree

  add_foreign_key "albums", "artists"
  add_foreign_key "songs", "albums"
  add_foreign_key "songs", "artists"
end
