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

ActiveRecord::Schema.define(version: 2022_10_31_021600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.text "info"
  end

  create_table "abilities_pokemon", id: false, force: :cascade do |t|
    t.integer "ability_id"
    t.integer "pokemon_id"
  end

  create_table "abilities_species", id: false, force: :cascade do |t|
    t.integer "ability_id"
    t.integer "species_id"
  end

  create_table "attacks", force: :cascade do |t|
    t.string "name"
    t.string "element_type"
    t.string "category"
    t.integer "pp"
    t.integer "power"
    t.integer "accuracy"
  end

  create_table "attacks_pokemon", id: false, force: :cascade do |t|
    t.integer "attack_id"
    t.integer "pokemon_id"
  end

  create_table "attacks_species", id: false, force: :cascade do |t|
    t.integer "attack_id"
    t.integer "species_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "info"
  end

  create_table "natures", force: :cascade do |t|
    t.string "name"
    t.string "plus"
    t.string "minus"
  end

  create_table "pokemon", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "species_id"
    t.integer "nature_id"
    t.integer "item_id"
    t.integer "ev_hp"
    t.integer "ev_attack"
    t.integer "ev_defense"
    t.integer "ev_spatk"
    t.integer "ev_spdef"
    t.integer "ev_speed"
    t.integer "iv_hp"
    t.integer "iv_attack"
    t.integer "iv_defense"
    t.integer "iv_spatk"
    t.integer "iv_spdef"
    t.integer "iv_speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_teams", id: false, force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "team_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "element_type"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "spatk"
    t.integer "spdef"
    t.integer "speed"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
