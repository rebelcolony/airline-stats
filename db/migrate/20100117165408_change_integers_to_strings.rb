class ChangeIntegersToStrings < ActiveRecord::Migration
  def self.up
    change_column :airlines, :weight_limit, :string
    change_column :airlines, :year_founded, :string
    change_column :airlines, :fleet, :string
    change_column :airlines, :destinations, :string
    change_column :airlines, :total_flights, :string
    
  end

  def self.down
    change_column :airlines, :total_flights, :integer
    change_column :airlines, :weight_limit, :integer
    change_column :airlines, :year_founded, :integer
    change_column :airlines, :destinations, :integer
    change_column :airlines, :fleet, :integer
  end
end
