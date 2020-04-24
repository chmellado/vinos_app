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

ActiveRecord::Schema.define(version: 2020_04_24_004356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cargos", force: :cascade do |t|
    t.string "name"
    t.bigint "enologo_id", null: false
    t.bigint "revista_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enologo_id"], name: "index_cargos_on_enologo_id"
    t.index ["revista_id"], name: "index_cargos_on_revista_id"
  end

  create_table "cepas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enologos", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "nationality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ensamblajes", force: :cascade do |t|
    t.bigint "cepa_id", null: false
    t.bigint "vino_id", null: false
    t.boolean "available", default: true
    t.integer "porcentaje"
  end

  create_table "nota", force: :cascade do |t|
    t.integer "puntaje"
    t.bigint "enologo_id", null: false
    t.bigint "vino_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enologo_id"], name: "index_nota_on_enologo_id"
    t.index ["vino_id"], name: "index_nota_on_vino_id"
  end

  create_table "revista", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vinos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cargos", "enologos"
  add_foreign_key "cargos", "revista", column: "revista_id"
  add_foreign_key "ensamblajes", "cepas"
  add_foreign_key "ensamblajes", "vinos"
  add_foreign_key "nota", "enologos"
  add_foreign_key "nota", "vinos"
end
