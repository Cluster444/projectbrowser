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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100917101648) do

  create_table "project_languages", :force => true do |t|
    t.string "project_id"
    t.string "date_created"
    t.string "description"
    t.string "language_code"
    t.string "language_direction"
    t.string "language_name"
    t.string "language_name_localized"
    t.string "last_modified"
    t.string "percent_complete"
    t.string "title"
  end

  create_table "projects", :force => true do |t|
    t.string "date_created"
    t.string "description"
    t.string "duration"
    t.string "external_identifier"
    t.string "genre"
    t.string "language"
    t.string "last_modified"
    t.string "num_languages"
    t.string "title"
    t.string "transcription_status"
    t.string "user"
    t.string "uuid"
    t.string "views"
    t.string "work_status"
    t.string "display_uri"
    t.string "media_uri"
    t.string "screenshot_uri"
    t.string "translate_uri"
  end

end
