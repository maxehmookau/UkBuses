require 'spec_helper'

describe 'initialize' do

  it 'should return a Bus object' do
    bus = UkBuses::Bus.new()
    expect(bus.class).to eq(UkBuses::Bus)
  end

  it 'should allow route_number to be set' do
    bus = UkBuses::Bus.new()
    bus.route_number = '42'
    expect(bus.route_number).to eq '42'
  end

  it 'should allow destination to be set' do
    bus = UkBuses::Bus.new()
    bus.destination = 'Cadbury World'
    expect(bus.destination).to eq 'Cadbury World'
  end

  it 'should allow arrives to be set' do
    bus = UkBuses::Bus.new()
    bus.arrives = '11 mins'
    expect(bus.arrives).to eq '11 mins'
  end
  
end