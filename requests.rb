require_relative 'cache'
require 'net/http'
require 'json'

def get_json(url)
  JSON.parse(Net::HTTP.get(URI(url)))
end
