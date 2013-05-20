require 'nokogiri'
require 'open-uri'

module UkBuses
  class Query

    attr_accessor :stop_code

    def initialize(stop_code)
      @stop_code = stop_code
    end

    def url
      "http://nextbuses.mobi/WebView/BusStopSearch/BusStopSearchResults/#{ @stop_code }"
    end

    def xpath
      '//*[@id="wrapper"]/div[4]/table[1]/tr'
    end

    def get_document
      Nokogiri::HTML(open(url))
    end

    def fetch_buses
      buses = []

      get_document.xpath(xpath).each do |row|
        current_bus = {}
          row.children.each do |child|

            child_inner = child.inner_text.strip
            current_bus[:route_number] = child_inner if child_inner.length >= 1 && child_inner.length < 5
            current_bus[:destination] = child_inner.split(/\b(at|in|DUE)\b/).first[0..-2] if child_inner.length > 5
            if child_inner.split(/\b(at|in|DUE)\b/)[1] == 'DUE'
              current_bus[:arrives] = 'DUE'
            else
              current_bus[:arrives] = child_inner.split(/\b(at|in|DUE)\b/)[2].strip if child_inner.length > 5
            end
          end
        buses << UkBuses::Bus.new(current_bus[:route_number],
                                  current_bus[:destination],
                                  current_bus[:arrives])
      end
      buses
    end

  end
end