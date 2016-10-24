require 'spec_helper'
require 'cache'

describe Cache do
  describe '#key?' do
    context 'when key exists' do
      it 'returns true' do
        @cache = Cache.new('word' => 'foo')

        expect(@cache.key?('word')).to eq true
      end
    end

    context 'when key does not exist' do
      it 'returns false' do
        @cache = Cache.new

        expect(@cache.key?('word')).to eq false
      end
    end
  end

  describe '#set' do
    it 'sets the key/value pair' do
      @cache = Cache.new
      @cache.set('key', 'value')
      expect(@cache.key?('key')).to eq true
    end

    it 'sets key/value pairs' do
      @cache = Cache.new
      @cache.set('key1', 'value1')
      @cache.set('key2', 'value2')
      expect(@cache.key?('key1')).to eq true
      expect(@cache.key?('key2')).to eq true
    end
  end

  describe '#get' do
    context 'when a given key does not exist' do
      it 'returns nil' do
        @cache = Cache.new
        expect(@cache.get('key')).to eq nil
      end
    end

    context 'when a given key does exist' do
      it 'returns the value for the key' do
        @cache = Cache.new('key' => 'value')
        expect(@cache.get('key')).to eq 'value'
      end
    end
  end

  describe '#clear' do
    it 'empties the cache' do
      @cache = Cache.new('foo' => 'bar')

      @cache.clear

      expect(@cache.get('foo')).to eq nil
    end
  end
end
