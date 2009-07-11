class CreateAirlines < ActiveRecord::Migration
  def self.up
    create_table :airlines do |t|
      t.string :name
      t.string :wireless_internet
      t.string :checked_bag_fee
      t.integer :weight_limit
      t.string :minor_fees
      t.string :pets_cargo
      t.string :pets_cabin
      t.integer :flight_change_fee
      t.integer :flight_cancel_fee
      t.integer :fatal_events
      t.float :fatal_event_rate
      t.integer :miles_flown
      t.integer :fleet
      t.integer :reservation_number
      t.string :url
      t.string :iata_code
      t.string :country
      t.string :icao_code
      t.string :ticket_code
      t.string :regions
      t.integer :destinations
      t.integer :total_flights

      t.timestamps
    end
  end

  def self.down
    drop_table :airlines
  end
end
