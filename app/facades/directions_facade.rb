class DirectionsFacade
  def self.to_station_hash
    params = {
      from: '5224 W 25th Ave, Denver',
      to: '132 E Broad St, Griffin, GA, 30223',
      outFormat: 'json',
      unit: 'm'
    }
    result = DirectionsService.call_api('directions/v2/route', params)[:route]
    directions = result.dig(:legs, 0, :maneuvers)
  end

  def self.to_station
    to_station_hash.map { |direction| direction[:narrative] }
  end

  def self.travel_time
    to_station_hash.first[:time]
  end
end