class RenameMilesFlown < ActiveRecord::Migration
  def self.up
    rename_column :airlines, :miles_flown, :year_founded
  end

  def self.down
    rename_column :airlines, :year_founded, :miles_flown
  end
end
