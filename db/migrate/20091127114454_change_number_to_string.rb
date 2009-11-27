class ChangeNumberToString < ActiveRecord::Migration
  def self.up
    change_column :airlines, :reservation_number, :string
  end

  def self.down
    change_column :airlines, :reservation_number, :integer
  end
end
