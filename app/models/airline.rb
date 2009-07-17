class Airline < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :within => 2..15
  validates_presence_of :wireless_internet
  validates_length_of :wireless_internet, :maximum => 15
  validates_presence_of :checked_bag_fee
  validates_presence_of :weight_limit
  validates_numericality_of :weight_limit, :less_than => 1000, :greater_than => 0
  validates_presence_of :minor_fees
  validates_presence_of :pets_cabin
  validates_presence_of :pets_cargo
  validates_presence_of :flight_cancel_fee
  validates_numericality_of :flight_cancel_fee
  validates_presence_of :flight_change_fee
  validates_numericality_of :flight_change_fee, :less_than => 1000
  validates_presence_of :fatal_events
  validates_numericality_of :fatal_events, :less_than => 1000
  validates_presence_of :miles_flown
  validates_numericality_of :miles_flown
  validates_presence_of :fleet
  validates_numericality_of :fleet
  validates_presence_of :reservation_number
  validates_numericality_of :reservation_number
  validates_presence_of :url
  validates_presence_of :iata_code
  validates_presence_of :country
  validates_presence_of :icao_code
  validates_presence_of :ticket_code
  validates_presence_of :regions
  validates_presence_of :destinations
  validates_presence_of :total_flights
end
