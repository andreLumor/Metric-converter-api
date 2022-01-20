require 'sinatra'
require 'json'
require_relative 'metric.rb'
class App < Sinatra::Base
  get '/converter/:value/:original_unit/:new_unit' do
    content_type :json
    value = params[:value].to_f
    unit = params[:original_unit]
    new_unit = params[:new_unit]
    metric = Metric.new(value, unit)
    {converted_value: metric.send("to_#{new_unit}"), old_unit: unit, new_unit: new_unit}.to_json
  end
end
