require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/airlines/index.html.erb" do
  include AirlinesHelper

  before(:each) do
    assigns[:airlines] = [
      stub_model(Airline,
        :name => "value for name",
        :wireless_internet => "value for wireless_internet",
        :checked_bag_fee => "value for checked_bag_fee",
        :weight_limit => 1,
        :minor_fees => "value for minor_fees",
        :pets_cargo => "value for pets_cargo",
        :pets_cabin => "value for pets_cabin",
        :flight_change_fee => 1,
        :flight_cancel_fee => 1,
        :fatal_events => 1,
        :fatal_event_rate => 1.5,
        :miles_flown => 1,
        :fleet => 1,
        :reservation_number => 1,
        :url => "value for url",
        :iata_code => "value for iata_code",
        :country => "value for country",
        :icao_code => "value for icao_code",
        :ticket_code => "value for ticket_code",
        :regions => "value for regions",
        :destinations => 1,
        :total_flights => 1
      ),
      stub_model(Airline,
        :name => "value for name",
        :wireless_internet => "value for wireless_internet",
        :checked_bag_fee => "value for checked_bag_fee",
        :weight_limit => 1,
        :minor_fees => "value for minor_fees",
        :pets_cargo => "value for pets_cargo",
        :pets_cabin => "value for pets_cabin",
        :flight_change_fee => 1,
        :flight_cancel_fee => 1,
        :fatal_events => 1,
        :fatal_event_rate => 1.5,
        :miles_flown => 1,
        :fleet => 1,
        :reservation_number => 1,
        :url => "value for url",
        :iata_code => "value for iata_code",
        :country => "value for country",
        :icao_code => "value for icao_code",
        :ticket_code => "value for ticket_code",
        :regions => "value for regions",
        :destinations => 1,
        :total_flights => 1
      )
    ]
  end

  it "renders a list of airlines" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for wireless_internet".to_s, 2)
    response.should have_tag("tr>td", "value for checked_bag_fee".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for minor_fees".to_s, 2)
    response.should have_tag("tr>td", "value for pets_cargo".to_s, 2)
    response.should have_tag("tr>td", "value for pets_cabin".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for url".to_s, 2)
    response.should have_tag("tr>td", "value for iata_code".to_s, 2)
    response.should have_tag("tr>td", "value for country".to_s, 2)
    response.should have_tag("tr>td", "value for icao_code".to_s, 2)
    response.should have_tag("tr>td", "value for ticket_code".to_s, 2)
    response.should have_tag("tr>td", "value for regions".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
