require 'httparty'
require 'json'
require_relative 'hourly_forecast'
require_relative 'hurricane_forecast'
require_relative 'sun'

def get_json(url)
  HTTParty.get(url).parsed_response
end

#
class WeatherForecast
  def initialize(city_state)
    @data = get_json("http://api.wunderground.com/api/a2181b0f1e781977/astronomy/currenthurricane/alerts/forecast10day/hourly/q/#{city_state[1]}/#{city_state[0]}.json")
  end

  def alerts
    @data['alerts']
  end

  def hourly_forecast
    HourlyForecast.new(@data['hourly_forecast'])
  end

  def hurricane_forecast
    HurricaneForecast.new(@data['currenthurricane'])
  end

  def sun_forecast
    Sun.new(@data['moon_phase'])
  end

  def ten_day
    ten_day = @data['forecast']['txt_forecast']['forecastday']
    ten_day.each do |weekly|
      puts "On #{weekly['title']}: #{weekly['fcttext']}\n"
    end
  end
end
