class AddWeightLimitExtra < ActiveRecord::Migration
  def self.up
    add_column :airlines, :weight_limit_extra, :string
  end

  def self.down
    remove_column :airlines, :weight_limit_extra
  end
end
