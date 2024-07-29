require 'rails_helper'

RSpec.describe SearchService do
  it 'can make API call to database', :vcr do
    params = {
      location: "Griffin Coffee",
      fuel_type: "ELEC",
      format: "json"
    }
    query = SearchService.call_api('/api/alt-fuel-stations/v1/nearest', params)[:fuel_stations]
    result = query.first

    expect(query).to be_an Array #(?)
    expect(result).to be_a Hash
    
    expect(result).to have_key(:fuel_type_code)
    expect(result[:fuel_type_code]).to be_a String

    expect(result).to have_key(:station_name)
    expect(result[:station_name]).to be_a String

    expect(result).to have_key(:distance)
    expect(result[:distance]).to be_a Float

    expect(result).to have_key(:access_days_time)
    expect(result[:access_days_time]).to be_a String


    expect(result).to have_key(:city)
    expect(result[:city]).to be_a String
    expect(result).to have_key(:state)
    expect(result[:state]).to be_a String
    expect(result).to have_key(:street_address)
    expect(result[:street_address]).to be_a String
    expect(result).to have_key(:zip)
    expect(result[:street_address]).to be_a String
    expect(result[:zip]).to be_a String
  end
end
