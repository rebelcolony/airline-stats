require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Airline do
  before(:each) do
    @airline = Airline.new(
      :name => "value",
      :wireless_internet => "value",
      :checked_bag_fee => "value",
      :weight_limit => 1,
      :minor_fees => "value",
      :pets_cargo => "value",
      :pets_cabin => "value",
      :flight_change_fee => 1,
      :flight_cancel_fee => 1,
      :fatal_events => 1,
      :fatal_event_rate => 1.5,
      :miles_flown => 1,
      :fleet => 1,
      :reservation_number => 1,
      :url => "value for url",
      :iata_code => "value",
      :country => "value for country",
      :icao_code => "value for icao_code",
      :ticket_code => "value for ticket_code",
      :regions => "value for regions",
      :destinations => 1,
      :total_flights => 1
    )
  end
  
  
  it "should create a new instance given valid attributes" do
    @airline.should be_valid
  end
  
  it "should have a name" do
    @airline.name = nil
    @airline.should_not be_valid
  end
  
  it "should have a name that's at least 2 charcters" do
     @airline.name = "a"
     @airline.should_not be_valid
  end
  
  it "should have a name that's less than 15 characters" do
    @airline.name = "I'm a crazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzy long name that should fail"
    @airline.should_not be_valid
  end
  
  it "should have internet value" do
    @airline.wireless_internet = nil
    @airline.should_not be_valid
  end
  
  it "should have a internet value that's less than 15 characters" do
    @airline.wireless_internet = "I'm a crazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzy long name that should fail"
    @airline.should_not be_valid
  end
  
  it "should have checked bag fee value" do
    @airline.checked_bag_fee = nil
    @airline.should_not be_valid
  end
  
   it "should have a weight limit" do
    @airline.weight_limit = nil
    @airline.should_not be_valid
  end
  
  it "should have a weight limit thats a number" do
    @airline.weight_limit = "a string"
    @airline.should_not be_valid
  end
  
  it "should have a weight limit between 0 and 1000" do
    @airline.weight_limit = 10000
    @airline.should_not be_valid
  end
  
  it "should have a weight limit that is positive number" do
    @airline.weight_limit = -1
    @airline.should_not be_valid
  end
  
  it "should have a minor_fees value" do
    @airline.minor_fees = nil
    @airline.should_not be_valid
  end

  it "should have a pets_cabin value" do
    @airline.pets_cabin = nil
    @airline.should_not be_valid
  end
  
  it "should have a pets_cargo value" do
    @airline.pets_cargo = nil
    @airline.should_not be_valid
  end
  
  it "should have a flight_cancel_fee" do
    @airline.flight_cancel_fee = nil
    @airline.should_not be_valid
  end
  
  it "should have a flight_cancel_fee thats a number" do
    @airline.flight_cancel_fee = "a string"
    @airline.should_not be_valid
  end
  
   it "should have a flight_change_fee" do
    @airline.flight_change_fee = nil
    @airline.should_not be_valid
  end
  
   it "should have a flight_change_fee thats a number" do
    @airline.flight_change_fee = "a string"
    @airline.should_not be_valid
  end
  
  it "should have a fatal_events value" do
    @airline.fatal_events = nil
    @airline.should_not be_valid
  end
  
  it "should have a fatal_events value thats a number" do
    @airline.fatal_events = "a string"
    @airline.should_not be_valid
  end
  
   it "should have a miles_flown value" do
    @airline.miles_flown = nil
    @airline.should_not be_valid
  end
  
  it "should have a miles_flown value thats a number" do
    @airline.miles_flown = "a string"
    @airline.should_not be_valid
  end
  
   it "should have a fleet value" do
    @airline.fleet = nil
    @airline.should_not be_valid
  end
  
  it "should have a fleet value thats a number" do
    @airline.fleet = "a string"
    @airline.should_not be_valid
  end
  
  it "should have a reservation_number" do
    @airline.reservation_number = nil
    @airline.should_not be_valid
  end
  
  it "should have a reservation_number thats a number" do
    @airline.reservation_number = "a string"
    @airline.should_not be_valid
  end
  
  it "should have a url" do
    @airline.url = nil
    @airline.should_not be_valid
  end
  
  it "should have a iata_code" do
    @airline.iata_code = nil
    @airline.should_not be_valid
  end
  
    it "should have a country" do
    @airline.country = nil
    @airline.should_not be_valid
  end
  
     it "should have a icao_code" do
    @airline.icao_code = nil
    @airline.should_not be_valid
  end
  
    it "should have a ticket_code" do
    @airline.ticket_code = nil
    @airline.should_not be_valid
  end
  
    it "should have a regions value" do
    @airline.regions = nil
    @airline.should_not be_valid
  end
  
   it "should have a destinations value" do
    @airline.destinations = nil
    @airline.should_not be_valid
  end
  
   it "should have total_flights" do
    @airline.total_flights = nil
    @airline.should_not be_valid
  end
  
end
