# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_05_17_131717) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "notes", force: :cascade do |t|
    t.string "year"
    t.integer "software_id", null: false
    t.integer "subsoftware_id", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["software_id"], name: "index_notes_on_software_id"
    t.index ["subsoftware_id"], name: "index_notes_on_subsoftware_id"
    t.index ["type_id"], name: "index_notes_on_type_id"
  end

  create_table "softwares", force: :cascade do |t|
    t.string "name"
    t.integer "esats_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "key_result"
    t.string "objective"
  end

  create_table "subsoftwares", force: :cascade do |t|
    t.string "name"
    t.integer "esats_id"
    t.string "version"
    t.string "standard_scope"
    t.integer "software_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["software_id"], name: "index_subsoftwares_on_software_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "notes", "softwares"
  add_foreign_key "notes", "subsoftwares"
  add_foreign_key "notes", "types"
  add_foreign_key "subsoftwares", "softwares"
end
