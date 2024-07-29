class Station
  attr  :name, 
        :fuel_type, 
        :distance,
        :access_times,
        :city,
        :state,
        :address,
        :zip

  def initialize(data)
    @name = data[:station_name]
    @fuel_type = data[:fuel_type_code]
    @distance = data[:distance].round(1) #can I do this?
    @access_times = data[:access_days_time]
    @city = data[:city]
    @state = data[:state]
    @address = data[:street_address]
    @zip = data[:zip]
    
  end
end