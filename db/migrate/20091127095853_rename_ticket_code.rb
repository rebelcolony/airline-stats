class RenameTicketCode < ActiveRecord::Migration
  def self.up
    rename_column :airlines, :ticket_code, :alliance
  end

  def self.down
    rename_column :airlines, :alliance, :ticket_code
  end
end
