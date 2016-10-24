require_relative 'lib/cache'
require_relative 'classes/weather_forecast'

def main
  city_state = ARGV
  forecast = WeatherForecast.new(city_state)

  alerts = forecast.alerts
  if alerts == []
    puts "No alerts for #{city_state[0]}.\n\n\n"
  else
    puts "#{alerts}\n\n\n"
  end

  hourly_forecast = forecast.hourly_forecast
  puts "Date: #{hourly_forecast.time_of_day}\nTemp: " \
    "#{hourly_forecast.english_temp}\n" \
    "Humidity: #{hourly_forecast.humidity}%" \
    "\nSkies: #{hourly_forecast.skies}\n\n\n"

  sun_forecast = forecast.sun_forecast
  puts "Sunrise: #{sun_forecast.sunrise_hr}:" \
    "#{sun_forecast.sunrise_min}\n" \
    "Sunset: #{sun_forecast.sunset_hr}:" \
    "#{sun_forecast.sunset_min}\n\n\n"

  forecast.ten_day
  puts "\n\n\n"

  cane_info = forecast.hurricane_forecast
  puts "'Cane \"#{cane_info.hurricane_name}\" is a'comin' for us!\n" \
    "Bearing: #{cane_info.heading}" \
    " at #{cane_info.speed}MPH.\n" \
    " \nIt's #{cane_info.hurricane_time}, " \
    "and the storms at #{cane_info.latitude}/#{cane_info.longitude}\n" \
    ' better get to cover!'
end

main if __FILE__ == $PROGRAM_NAME
