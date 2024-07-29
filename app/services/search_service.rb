class SearchService
  def self.call_api(endpoint, params = {})
    response = conn.get(endpoint, params) do |request|
      request.params = params
      request.params[:api_key] = Rails.application.credentials.stations[:key]
    end
    parse_data(response)
  end

  private

  def self.conn
    Faraday.new("https://developer.nrel.gov")
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
