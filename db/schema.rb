# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_25_213752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.string "instrument"
    t.string "level"
    t.integer "rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "course_id", null: false
    t.json "location"
    t.boolean "has_paid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_lessons_on_course_id"
    t.index ["student_id"], name: "index_lessons_on_student_id"
  end

  create_table "student_reviews", force: :cascade do |t|
    t.text "review"
    t.integer "rating"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_student_reviews_on_lesson_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "profile_pic"
    t.text "bio"
    t.json "address"
    t.string "postal_code"
    t.boolean "will_host"
    t.boolean "will_travel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teacher_reviews", force: :cascade do |t|
    t.text "review"
    t.integer "rating"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_teacher_reviews_on_lesson_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "profile_pic"
    t.text "bio"
    t.json "address"
    t.string "postal_code"
    t.json "certifications"
    t.boolean "will_host"
    t.boolean "will_travel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.date "date"
    t.time "time"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_booked"
    t.index ["lesson_id"], name: "index_timeslots_on_lesson_id"
    t.index ["teacher_id"], name: "index_timeslots_on_teacher_id"
  end

  create_table "videos", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.string "instrument"
    t.string "level"
    t.string "file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_videos_on_teacher_id"
  end

  add_foreign_key "courses", "teachers"
  add_foreign_key "lessons", "courses"
  add_foreign_key "lessons", "students"
  add_foreign_key "student_reviews", "lessons"
  add_foreign_key "teacher_reviews", "lessons"
  add_foreign_key "timeslots", "lessons"
  add_foreign_key "timeslots", "teachers"
  add_foreign_key "videos", "teachers"
end
