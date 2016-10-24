require 'pry'
#
class Cache
  def initialize(cache = {})
    @cache = cache
  end

  def key?(key)
    @cache.key? key
  end

  def set(key, value)
    @cache[key] = value
  end

  def get(key)
    @cache[key]
  end

  def clear
    @cache = {}
  end
end
