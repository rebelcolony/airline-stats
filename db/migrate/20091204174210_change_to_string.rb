class ChangeToString < ActiveRecord::Migration
  def self.up
    change_column :airlines, :fatal_event_rate, :string
    change_column :airlines, :flight_cancel_fee, :string
    change_column :airlines, :flight_change_fee, :string
    change_column :airlines, :fatal_events, :string

  end

  def self.down

    change_column :airlines, :fatal_events, :integer
    change_column :airlines, :flight_change_fee, :integer
    change_column :airlines, :flight_cancel_fee, :integer
    change_column :airlines, :fatal_event_rate, :float
  end
end
