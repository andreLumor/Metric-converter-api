require "spec_helper"
#require_relative '../app.rb'


describe App do
  let(:app) { App.new }

  describe '#to_m' do
    let(:response) { get "/converter/300/foot/m" }
    it 'Converts the value to m' do      
      expect(response.body).to eq('{"converted_value":91.4399970739201,"old_unit":"foot","new_unit":"m"}') 
    end
  end

  describe '#to_cm' do
    let(:response) { get "/converter/300/foot/cm" }
    it 'Converts the value to cm' do      
      expect(response.body).to eq('{"converted_value":9143.99970739201,"old_unit":"foot","new_unit":"cm"}') 
    end
  end

  describe '#to_km' do
    let(:response) { get "/converter/300/foot/km" }
    it 'Converts the value to km' do      
      expect(response.body).to eq('{"converted_value":0.0914399970739201,"old_unit":"foot","new_unit":"km"}') 
    end
  end

  describe '#to_inch' do
    let(:response) { get "/converter/300/foot/inch" }
    it 'Converts the value to inch' do      
      expect(response.body).to eq('{"converted_value":3599.9926848002337,"old_unit":"foot","new_unit":"inch"}') 
    end
  end

  describe '#to_foot' do
    let(:response) { get "/converter/300/foot/foot" }
    it 'Converts the value to foot' do      
      expect(response.body).to eq('{"converted_value":300.0,"old_unit":"foot","new_unit":"foot"}') 
    end
  end

  describe '#to_yard' do
    let(:response) { get "/converter/300/foot/yard" }
    it 'Converts the value to yard' do      
      expect(response.body).to eq('{"converted_value":99.99969520000975,"old_unit":"foot","new_unit":"yard"}') 
    end
  end

  describe '#to_mile' do
    let(:response) { get "/converter/300/foot/mile" }
    it 'Converts the value to mile' do      
      expect(response.body).to eq('{"converted_value":0.05681807098182173,"old_unit":"foot","new_unit":"mile"}') 
    end
  end
  """
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
  """
end
