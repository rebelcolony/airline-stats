require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/airlines/show.html.erb" do
  include AirlinesHelper
  before(:each) do
    assigns[:airline] = @airline = stub_model(Airline,
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
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ wireless_internet/)
    response.should have_text(/value\ for\ checked_bag_fee/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ minor_fees/)
    response.should have_text(/value\ for\ pets_cargo/)
    response.should have_text(/value\ for\ pets_cabin/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1\.5/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ url/)
    response.should have_text(/value\ for\ iata_code/)
    response.should have_text(/value\ for\ country/)
    response.should have_text(/value\ for\ icao_code/)
    response.should have_text(/value\ for\ ticket_code/)
    response.should have_text(/value\ for\ regions/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
