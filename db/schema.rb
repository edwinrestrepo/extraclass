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

ActiveRecord::Schema.define(version: 20150111212324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "answers", force: :cascade do |t|
    t.string   "description"
    t.integer  "question_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "correct",     default: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

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

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_progresses", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "content_id"
    t.float    "grade"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "content_progresses", ["content_id"], name: "index_content_progresses_on_content_id", using: :btree
  add_index "content_progresses", ["course_id"], name: "index_content_progresses_on_course_id", using: :btree
  add_index "content_progresses", ["student_id"], name: "index_content_progresses_on_student_id", using: :btree

  create_table "contents", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
  end

  add_index "contents", ["course_id"], name: "index_contents_on_course_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.integer  "status"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "courses", ["category_id"], name: "index_courses_on_category_id", using: :btree

  create_table "courses_contents", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "courses_contents", ["content_id"], name: "index_courses_contents_on_content_id", using: :btree
  add_index "courses_contents", ["course_id"], name: "index_courses_contents_on_course_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "description"
    t.integer  "survey_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "questions", ["survey_id"], name: "index_questions_on_survey_id", using: :btree

  create_table "students", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.float    "pga"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  create_table "survey_responses", force: :cascade do |t|
    t.integer  "survey_id"
    t.integer  "question_id"
    t.integer  "answer_id"
    t.integer  "timestamp"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "survey_responses", ["answer_id"], name: "index_survey_responses_on_answer_id", using: :btree
  add_index "survey_responses", ["question_id"], name: "index_survey_responses_on_question_id", using: :btree
  add_index "survey_responses", ["student_id"], name: "index_survey_responses_on_student_id", using: :btree
  add_index "survey_responses", ["survey_id"], name: "index_survey_responses_on_survey_id", using: :btree

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status"
    t.integer  "content_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "surveys", ["content_id"], name: "index_surveys_on_content_id", using: :btree

  add_foreign_key "answers", "questions"
  add_foreign_key "content_progresses", "contents"
  add_foreign_key "content_progresses", "courses"
  add_foreign_key "content_progresses", "students"
  add_foreign_key "contents", "courses"
  add_foreign_key "courses", "categories"
  add_foreign_key "courses_contents", "contents"
  add_foreign_key "courses_contents", "courses"
  add_foreign_key "questions", "surveys"
  add_foreign_key "survey_responses", "answers"
  add_foreign_key "survey_responses", "questions"
  add_foreign_key "survey_responses", "students"
  add_foreign_key "survey_responses", "surveys"
  add_foreign_key "surveys", "contents"
end
