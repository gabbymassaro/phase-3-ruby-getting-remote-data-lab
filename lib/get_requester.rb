require 'net/http'
require 'open-uri'
require 'json'
require_relative '/Users/gabriella.romanowski/Development/code/phase-3/phase-3-ruby-getting-remote-data-lab/lib/get_requester.rb'

class GetRequester

  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    body = get_response_body
    JSON.parse(body)
  end

end
