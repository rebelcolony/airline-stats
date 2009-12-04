class AddExtrasToAirlines < ActiveRecord::Migration
  def self.up
    add_column :airlines, :alliance_extra, :string
    add_column :airlines, :flight_change_fee_extra, :string
    add_column :airlines, :flight_cancel_fee_extra, :string
    add_column :airlines, :excess_baggage_fee_extra, :string
    add_column :airlines, :minor_fees_extra, :string
    add_column :airlines, :pets_cargo_fee_extra, :string
    add_column :airlines, :pets_cabin_fee_extra, :string
    add_column :airlines, :destinations_extra, :string
    add_column :airlines, :fatal_incidents_extra, :string
    add_column :airlines, :fatal_event_rate_extra, :string
    add_column :airlines, :cabin_internet_extra, :string
    add_column :airlines, :total_flights_extra, :string
  end

  def self.down
    remove_column :airlines, :total_flights_extra
    remove_column :airlines, :cabin_internet_extra
    remove_column :airlines, :fatal_event_rate_extra
    remove_column :airlines, :fatal_incidents_extra
    remove_column :airlines, :destination_extra
    remove_column :airlines, :pets_cabin_fee_extra
    remove_column :airlines, :pets_cargo_fee_extra
    remove_column :airlines, :minor_fees_extra
    remove_column :airlines, :excess_baggage_fee_extra
    remove_column :airlines, :flight_cancel_fee_extra
    remove_column :airlines, :alliance_extra
    remove_column :airlines, :flight_change_fee_extra
   
  end
end
