class SearchFacade
  def self.closest_station(station)
    params = {
      location: station,
      fuel_type: "ELEC",
      format: "json"
    }
    stations = SearchService.call_api('/api/alt-fuel-stations/v1/nearest', params)[:fuel_stations]
    stations = stations.map do |station|
      Station.new(station)
    end
    stations.first
  end
end