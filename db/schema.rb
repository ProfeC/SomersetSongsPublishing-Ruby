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

ActiveRecord::Schema.define(version: 20150922042932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "original_release_date"
    t.integer  "artist_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "cover_art_file_name"
    t.string   "cover_art_content_type"
    t.integer  "cover_art_file_size"
    t.datetime "cover_art_updated_at"
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree
  add_index "albums", ["title"], name: "index_albums_on_title", unique: true, using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "cover_art_file_name"
    t.string   "cover_art_content_type"
    t.integer  "cover_art_file_size"
    t.datetime "cover_art_updated_at"
  end

  add_index "artists", ["name"], name: "index_artists_on_name", unique: true, using: :btree

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "genres", ["title"], name: "index_genres_on_title", unique: true, using: :btree

  create_table "genres_songs", id: false, force: :cascade do |t|
    t.integer "song_id",  null: false
    t.integer "genre_id", null: false
  end

  add_index "genres_songs", ["genre_id", "song_id"], name: "index_genres_songs_on_genre_id_and_song_id", using: :btree
  add_index "genres_songs", ["song_id", "genre_id"], name: "index_genres_songs_on_song_id_and_genre_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.string   "project"
    t.text     "description"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "listen_online"
    t.boolean  "send_suggestions"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

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
    t.string   "title"
    t.text     "description"
    t.date     "original_release_date"
    t.string   "length"
    t.integer  "album_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "cover_art_file_name"
    t.string   "cover_art_content_type"
    t.integer  "cover_art_file_size"
    t.datetime "cover_art_updated_at"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["title"], name: "index_songs_on_title", unique: true, using: :btree

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

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vs_database_diagrams", id: false, force: :cascade do |t|
    t.string   "name",     limit: 80
    t.text     "diadata"
    t.string   "comment",  limit: 1022
    t.text     "preview"
    t.string   "lockinfo", limit: 80
    t.datetime "locktime"
    t.string   "version",  limit: 80
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "songs", "albums"
end
