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

ActiveRecord::Schema.define(version: 2020_04_09_220817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.index ["dia_id"], name: "index_atividades_on_dia_id"
  end

  create_table "dias", force: :cascade do |t|
    t.date "data"
    t.bigint "evento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["admin_id"], name: "index_eventos_on_admin_id"
  end

  create_table "parceiros", force: :cascade do |t|
    t.string "nome"
    t.json "imagens"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "atividades", "dias"
  add_foreign_key "dias", "eventos"
  add_foreign_key "evento_parceiros", "eventos"
  add_foreign_key "evento_parceiros", "parceiros"
  add_foreign_key "eventos", "admins"
end
