#
class Sun
  def initialize(sun_info)
    @sun_info = sun_info
  end

  def sunrise_hr
    @sun_info['sunrise']['hour']
  end

  def sunrise_min
    @sun_info['sunrise']['minute']
  end

  def sunset_hr
    @sun_info['sunset']['hour']
  end

  def sunset_min
    @sun_info['sunset']['minute']
  end
  # sunrise_hr = entire_call['moon_phase']['sunrise']['hour']
  # sunrise_min = entire_call['moon_phase']['sunrise']['minute']
  # sunset_hr = entire_call['moon_phase']['sunset']['hour']
  # sunset_min = entire_call['moon_phase']['sunset']['minute']
end
