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

describe 'url' do

  it 'should return the base URL with the stopcode appended' do
    b = UkBuses::Query.new('cditmpa')
    expect(b.url).to eq('http://nextbuses.mobi/WebView/BusStopSearch/BusStopSearchResults/cditmpa')
  end

end

describe 'xpath' do

  it 'should return an XPath string' do
    b = UkBuses::Query.new('cditmpa')
    expect(b.xpath).to eq('//*[@id="wrapper"]/div[4]/table[1]/tr')
  end

end

describe 'get_document' do

  it 'should return a Nokogiri::Document object' do
    VCR.use_cassette('response') do
      b = UkBuses::Query.new('cditmpa')
      expect(b.get_document.class).to eq(Nokogiri::HTML::Document)
    end
  end

end
















