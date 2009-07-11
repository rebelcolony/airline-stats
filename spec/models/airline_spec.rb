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
  
  

end
