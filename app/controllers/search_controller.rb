class SearchController < ApplicationController
  def index
    @station = SearchFacade.closest_station(params[:location])
    @directions = DirectionsFacade.to_station
    @travel_time = DirectionsFacade.travel_time
  end
end