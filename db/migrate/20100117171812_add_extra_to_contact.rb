class AddExtraToContact < ActiveRecord::Migration
  def self.up
    add_column :airlines, :contact_extra, :text
  end

  def self.down
    remove_column :airlines, :contact_extra
  end
end
