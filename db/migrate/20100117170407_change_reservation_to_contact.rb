class ChangeReservationToContact < ActiveRecord::Migration
  def self.up
    rename_column :airlines, :reservation_number, :contact
  end

  def self.down
    rename_column :airlines, :contact, :reservation_number
  end
end
