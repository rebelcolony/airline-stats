# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090711114733) do

  create_table "airlines", :force => true do |t|
    t.string   "name"
    t.string   "wireless_internet"
    t.string   "checked_bag_fee"
    t.integer  "weight_limit"
    t.string   "minor_fees"
    t.string   "pets_cargo"
    t.string   "pets_cabin"
    t.integer  "flight_change_fee"
    t.integer  "flight_cancel_fee"
    t.integer  "fatal_events"
    t.float    "fatal_event_rate"
    t.integer  "miles_flown"
    t.integer  "fleet"
    t.integer  "reservation_number"
    t.string   "url"
    t.string   "iata_code"
    t.string   "country"
    t.string   "icao_code"
    t.string   "ticket_code"
    t.string   "regions"
    t.integer  "destinations"
    t.integer  "total_flights"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
