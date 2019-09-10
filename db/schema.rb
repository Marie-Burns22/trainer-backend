ActiveRecord::Schema.define(version: 2019_09_03_193120) do

  create_table "bookings", force: :cascade do |t|
    t.string "day"
    t.integer "time"
    t.integer "client_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "price"
    t.string "request_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
