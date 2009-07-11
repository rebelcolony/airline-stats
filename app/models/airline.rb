class Airline < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :within => 2..15
  validates_presence_of :wireless_internet
  validates_length_of :wireless_internet, :maximum => 15
  validates_presence_of :checked_bag_fee
  validates_presence_of :weight_limit
  validates_numericality_of :weight_limit, :less_than => 1000, :greater_than => 0
end
