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

ActiveRecord::Schema.define(version: 20170225012849) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id", null: false
    t.integer  "order",       null: false
    t.string   "title",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["title"], name: "index_answers_on_title"
  end

  create_table "question_comments", force: :cascade do |t|
    t.integer  "question_id", null: false
    t.string   "username",    null: false
    t.text     "body",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_question_comments_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_questions_on_title"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "answer_id",  null: false
    t.string   "username",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_votes_on_answer_id"
    t.index ["username"], name: "index_votes_on_username"
  end

end
