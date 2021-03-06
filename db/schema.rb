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

ActiveRecord::Schema.define(version: 2020_05_15_135944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "atividades", force: :cascade do |t|
    t.string "titulo"
    t.string "descricao"
    t.time "hora"
    t.bigint "dia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hora_s"
    t.string "local"
    t.index ["dia_id"], name: "index_atividades_on_dia_id"
  end

  create_table "dias", force: :cascade do |t|
    t.date "data"
    t.bigint "evento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "data_s"
    t.index ["evento_id"], name: "index_dias_on_evento_id"
  end

  create_table "evento_parceiros", force: :cascade do |t|
    t.bigint "evento_id"
    t.bigint "parceiro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evento_id"], name: "index_evento_parceiros_on_evento_id"
    t.index ["parceiro_id"], name: "index_evento_parceiros_on_parceiro_id"
  end

  create_table "eventos", force: :cascade do |t|
    t.string "titulo"
    t.string "descricao"
    t.string "local"
    t.date "data_inicio"
    t.date "data_fim"
    t.string "codigo"
    t.bigint "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "data_inicio_s"
    t.string "data_fim_s"
    t.index ["admin_id"], name: "index_eventos_on_admin_id"
  end

  create_table "parceiros", force: :cascade do |t|
    t.string "nome"
    t.json "imagens"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_id"
    t.string "img_link"
    t.string "tipo"
    t.index ["admin_id"], name: "index_parceiros_on_admin_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "atividades", "dias"
  add_foreign_key "dias", "eventos"
  add_foreign_key "evento_parceiros", "eventos"
  add_foreign_key "evento_parceiros", "parceiros"
  add_foreign_key "eventos", "admins"
  add_foreign_key "parceiros", "admins"
end
