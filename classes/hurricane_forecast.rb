#
class HurricaneForecast
  def initialize(current_hurricane)
    @current_hurricane = current_hurricane
    @first_current_hurricane = @current_hurricane.first['Current']
  end

  def hurricane_name
    @current_hurricane.first['stormInfo']['stormName']
  end

  def hurricane_time
    @first_current_hurricane['TimeGMT']['pretty']
  end

  def heading
    @first_current_hurricane['Movement']['Text']
  end

  def speed
    @first_current_hurricane['WindSpeed']['Mph']
  end

  def latitude
    @first_current_hurricane['lat']
  end

  def longitude
    @first_current_hurricane['lon']
  end
end

# current_hurricane = entire_call['currenthurricane']
# hurricane_name = current_hurricane.first['stormInfo']['stormName']
# first_current_hurricane = current_hurricane.first['Current']
# hurricane_time = first_current_hurricane['TimeGMT']['pretty']
# heading = first_current_hurricane['Movement']['Text']
# speed = entire_call['currenthurricane'].first['Current']['WindSpeed']['Mph']
# lat = entire_call['currenthurricane'].first['Current']['lat']
# long = entire_call['currenthurricane'].first['Current']['lon']
