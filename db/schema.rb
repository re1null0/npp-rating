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

ActiveRecord::Schema.define(version: 2018_08_10_152106) do

  create_table "Users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "role"
    t.string "workplace"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "credits", force: :cascade do |t|
    t.string "university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "credit_file_name"
    t.string "credit_content_type"
    t.integer "credit_file_size"
    t.datetime "credit_updated_at"
    t.string "name"
    t.string "mesto"
    t.string "link"
    t.datetime "date1"
    t.datetime "date2"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.string "university"
    t.string "speciality"
    t.string "user"
    t.integer "estimation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "syllabus_file_name"
    t.string "syllabus_content_type"
    t.integer "syllabus_file_size"
    t.datetime "syllabus_updated_at"
    t.string "rup_file_name"
    t.string "rup_content_type"
    t.integer "rup_file_size"
    t.datetime "rup_updated_at"
    t.string "ocenka_file_name"
    t.string "ocenka_content_type"
    t.integer "ocenka_file_size"
    t.datetime "ocenka_updated_at"
    t.integer "credits"
    t.integer "sem"
    t.integer "course"
    t.string "cycle"
  end

  create_table "estimations", force: :cascade do |t|
    t.string "user"
    t.string "discipline"
    t.string "speciality"
    t.string "university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ocen_list_edited_file_name"
    t.string "ocen_list_edited_content_type"
    t.integer "ocen_list_edited_file_size"
    t.datetime "ocen_list_edited_updated_at"
  end

  create_table "grads", force: :cascade do |t|
    t.string "fio"
    t.string "iin"
    t.datetime "dob"
    t.string "otd"
    t.string "forma"
    t.string "gender"
    t.string "mob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "university"
  end

  create_table "invests", force: :cascade do |t|
    t.string "university"
    t.integer "zayav1"
    t.integer "year1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "doc1_file_name"
    t.string "doc1_content_type"
    t.integer "doc1_file_size"
    t.datetime "doc1_updated_at"
    t.string "typec"
    t.string "name"
  end

  create_table "psostavs", force: :cascade do |t|
    t.string "university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sostav_file_name"
    t.string "sostav_content_type"
    t.integer "sostav_file_size"
    t.datetime "sostav_updated_at"
    t.string "fio"
    t.string "dis"
    t.string "vid"
    t.string "opit"
    t.string "kolvo"
    t.string "mesto"
    t.string "shtat"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soglas", force: :cascade do |t|
    t.string "university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "soglas_file_name"
    t.string "soglas_content_type"
    t.integer "soglas_file_size"
    t.datetime "soglas_updated_at"
    t.string "name"
    t.string "doc"
    t.datetime "date"
    t.string "vid"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.string "university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "ocenka_file_name"
    t.string "ocenka_content_type"
    t.integer "ocenka_file_size"
    t.datetime "ocenka_updated_at"
    t.string "mark", default: "--- []\n"
  end

  create_table "speciality_pulls", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ocen_list_file_name"
    t.string "ocen_list_content_type"
    t.integer "ocen_list_file_size"
    t.datetime "ocen_list_updated_at"
  end

  create_table "syllabuses", force: :cascade do |t|
    t.string "school"
    t.string "university"
    t.string "coordinator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "document_file_name"
    t.string "document_content_type"
    t.integer "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "universities", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mop_file_name"
    t.string "mop_content_type"
    t.integer "mop_file_size"
    t.datetime "mop_updated_at"
    t.string "ked_file_name"
    t.string "ked_content_type"
    t.integer "ked_file_size"
    t.datetime "ked_updated_at"
    t.string "speciality"
    t.string "rup_file_name"
    t.string "rup_content_type"
    t.integer "rup_file_size"
    t.datetime "rup_updated_at"
  end

  create_table "university_pulls", force: :cascade do |t|
    t.integer "key"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
