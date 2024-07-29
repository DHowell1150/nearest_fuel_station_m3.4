require 'rails_helper'

RSpec.describe DirectionsFacade do
  it "can get directions from current location to nearest station" do
    result = DirectionsFacade.to_station_hash
    expect(result).to be_a(Array)
    expect(result.first[:narrative]).to be_a(String)
  end
end
