require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/airlines/edit.html.erb" do
  include AirlinesHelper

  before(:each) do
    assigns[:airline] = @airline = stub_model(Airline,
      :new_record? => false,
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

  it "renders the edit airline form" do
    render

    response.should have_tag("form[action=#{airline_path(@airline)}][method=post]") do
      with_tag('input#airline_name[name=?]', "airline[name]")
      with_tag('input#airline_wireless_internet[name=?]', "airline[wireless_internet]")
      with_tag('input#airline_checked_bag_fee[name=?]', "airline[checked_bag_fee]")
      with_tag('input#airline_weight_limit[name=?]', "airline[weight_limit]")
      with_tag('input#airline_minor_fees[name=?]', "airline[minor_fees]")
      with_tag('input#airline_pets_cargo[name=?]', "airline[pets_cargo]")
      with_tag('input#airline_pets_cabin[name=?]', "airline[pets_cabin]")
      with_tag('input#airline_flight_change_fee[name=?]', "airline[flight_change_fee]")
      with_tag('input#airline_flight_cancel_fee[name=?]', "airline[flight_cancel_fee]")
      with_tag('input#airline_fatal_events[name=?]', "airline[fatal_events]")
      with_tag('input#airline_fatal_event_rate[name=?]', "airline[fatal_event_rate]")
      with_tag('input#airline_miles_flown[name=?]', "airline[miles_flown]")
      with_tag('input#airline_fleet[name=?]', "airline[fleet]")
      with_tag('input#airline_reservation_number[name=?]', "airline[reservation_number]")
      with_tag('input#airline_url[name=?]', "airline[url]")
      with_tag('input#airline_iata_code[name=?]', "airline[iata_code]")
      with_tag('input#airline_country[name=?]', "airline[country]")
      with_tag('input#airline_icao_code[name=?]', "airline[icao_code]")
      with_tag('input#airline_ticket_code[name=?]', "airline[ticket_code]")
      with_tag('input#airline_regions[name=?]', "airline[regions]")
      with_tag('input#airline_destinations[name=?]', "airline[destinations]")
      with_tag('input#airline_total_flights[name=?]', "airline[total_flights]")
    end
  end
end
