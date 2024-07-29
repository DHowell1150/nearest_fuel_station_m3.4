require 'rails_helper'

RSpec.describe DirectionsService do
  it 'can make API call to database', :vcr do
    params = {
      from: '5224 W 25th Ave, Denver',
      to: '132 E Broad St, Griffin, GA, 30223',
      outFormat: 'json',
      unit: 'm'
    }
    query = DirectionsService.call_api('directions/v2/route', params)[:route]
    directions = query.dig(:legs, 0, :maneuvers, 0, :narrative)
    expect(query).to be_an Hash 
    expect(directions).to be_a String
  end
end