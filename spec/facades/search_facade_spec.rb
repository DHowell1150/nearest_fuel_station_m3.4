require 'rails_helper'

RSpec.describe SearchFacade do
    it 'Can find electric stations nearby' do
      location = "5224 W 25th Ave, Denver, CO 80214"
      result = SearchFacade.closest_station(location)


      expect(result).to be_a(Station)
      expect(result.name).to be_an(String)
      expect(result.address).to be_a(String) 
      expect(result.city).to be_a(String) 
      expect(result.state).to be_a(String) 
      expect(result.zip).to be_a(String) 
      expect(result.fuel_type).to be_a(String)
      expect(result.distance).to be_a(Float)
      expect(result.access_times).to be_a(String)
    end
end