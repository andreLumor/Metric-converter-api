require "spec_helper"
require_relative '../metric'

describe Metric do
  let(:metric) { Metric.new(10000.0, 'm') }
  describe '#to_m' do
    it 'Converts the value to m' do
      expect(metric.to_m).to be == 10000.0 
    end
  end
  describe '#to_cm' do
    it 'Converts the value to cm' do
      expect(metric.to_cm).to be == 1000000.0
    end
  end
  describe '#to_km' do
    it 'Converts the value to km' do
      expect(metric.to_km).to be == 10.0 
    end
  end
  describe '#to_inch' do
    it 'Converts the value to inch' do
      expect(metric.to_inch).to be == 393700.0  
    end
  end
  describe '#to_foot' do
    it 'Converts the value to foot' do
      expect(metric.to_foot).to be == 32808.4
    end
  end
  describe '#to_yard' do
    it 'Converts the value to yard' do
      expect(metric.to_yard).to be == 10936.1
    end
  end
  describe '#to_mile' do
    it 'Converts the value to mile' do
      expect(metric.to_mile).to be == 6.2137 
    end
  end

end
