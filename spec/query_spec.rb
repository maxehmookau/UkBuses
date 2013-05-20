require 'spec_helper'

describe 'initialize' do
  
  it 'should create a new Query object' do
    b = UkBuses::Query.new("atestcode")
    expect(b.class).to eq(UkBuses::Query)
  end

  it 'should assign the stop_code to the object' do
    b = UkBuses::Query.new("atestcode")
    expect(b.stop_code).to eq('atestcode')
  end

end

describe 'fetch_buses' do

  it 'should return an Array' do
    VCR.use_cassette('response') do
      b = UkBuses::Query.new('cditmpa')
      expect(b.fetch_buses.class).to eq(Array)
    end
  end

  it 'should return an Array of Bus objects' do
    VCR.use_cassette('response') do
      b = UkBuses::Query.new('cditmpa')
      expect(b.fetch_buses.first.class).to eq(UkBuses::Bus)
    end
  end

end