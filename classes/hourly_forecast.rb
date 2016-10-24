#
class HourlyForecast
  def initialize(hourly_forecast)
    @hourly_forecast = hourly_forecast
  end

  def time_of_day
    @hourly_forecast.first['FCTTIME']['pretty']
  end

  def english_temp
    @hourly_forecast.first['temp']['english']
  end

  def humidity
    @hourly_forecast.first['humidity']
  end

  def skies
    @hourly_forecast.first['condition']
  end
end
