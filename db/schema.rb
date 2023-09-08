# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_230_908_044_318) do
  create_table 'animals', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'name'
    t.string 'type'
    t.integer 'legs'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'live_in'
  end

  create_table 'articles', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'title'
    t.text 'body'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'coupons', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'name'
    t.integer 'quanlity'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'employees', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'email'
    t.string 'phone_number'
    t.boolean 'sex'
    t.date 'birthday'
    t.string 'level'
    t.string 'address'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'col'
    t.text 'properties'
  end

  create_table 'payment_details', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'menu_type'
    t.bigint 'menu_id'
    t.bigint 'payment_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[menu_type menu_id], name: 'index_payment_details_on_menu'
    t.index ['payment_id'], name: 'index_payment_details_on_payment_id'
  end

  create_table 'payments', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'employee_id'
  end

  create_table 'time_prices', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'name'
    t.integer 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
