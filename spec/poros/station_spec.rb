require 'rails_helper'

RSpec.describe Station do 
  it "exists and has attributes" do
    data = {
      station_name: "station",
      fuel_type_code: "ELEC",
      distance: 0.012,
      access_days_time: "24 hours daily",
      city: "boulder",
      state: "co",
      street_address: "132 E Broad St",
      zip: "30223"
    }
    station = Station.new(data)
    expect(station.name).to be_a String
    expect(station.fuel_type).to be_a String
    expect(station.distance).to be_a Float
    expect(station.access_times).to be_a String

    expect(station.city).to be_a String
    expect(station.state).to be_a String
    expect(station.address).to be_a String
    expect(station.zip).to be_a String

  end
end