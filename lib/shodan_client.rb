require 'net/http'
require 'json'

class ShodanClient
  SHODAN_BASE_URL = 'https://api.shodan.io'

  def initialize(api_key)
    @api_key = api_key
  end

  # Fungsi untuk mencari berdasarkan query
  def search(query)
    uri = URI("#{SHODAN_BASE_URL}/shodan/host/search?key=#{@api_key}&query=#{URI.encode(query)}")
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
