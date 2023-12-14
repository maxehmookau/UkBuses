# UKBuses

[![Code Climate](https://codeclimate.com/github/maxehmookau/UkBuses.png)](https://codeclimate.com/github/maxehmookau/UkBuses)
[![Build Status](https://travis-ci.org/maxehmookau/UkBuses.png?branch=master)](https://travis-ci.org/maxehmookau/UkBuses)

Grab *real-time* bus information across the entire United Kingdom.

## Installation -edgdhfg

Add it to your Gemfile:

`gem 'uk_buses'`

## Use it

    require 'uk_buses'
    ...
    UkBuses::Query.new('cditmpa').fetch_buses

    #=>
    [#<UkBuses::Bus:0x007f8fe31aa2f0 @route_number="39", @destination="Heath Hospital", @arrives="4 mins">,
    #<UkBuses::Bus:0x007f8fe31a9aa8 @route_number="38", @destination="Heath, Childrens Unit", @arrives="20:45">,
    #<UkBuses::Bus:0x007f8fe31a9260 @route_number="39", @destination="Heath Hospital", @arrives="34 mins">,
    #<UkBuses::Bus:0x007f8fe31a8a18 @route_number="38", @destination="Heath, Childrens Unit", @arrives="21:15">,
    #<UkBuses::Bus:0x007f8fe31a81d0 @route_number="39", @destination="Heath Hospital", @arrives="21:30">,
    #<UkBuses::Bus:0x007f8fe38af780 @route_number="38", @destination="Heath, Childrens Unit", @arrives="21:45">,
    #<UkBuses::Bus:0x007f8fe38aef10 @route_number="39", @destination="Heath Hospital", @arrives="22:00">,
    #<UkBuses::Bus:0x007f8fe38ade58 @route_number="38", @destination="Heath, Childrens Unit", @arrives="22:15">,
    #<UkBuses::Bus:0x007f8fe38acf58 @route_number="39", @destination="Heath Hospital", @arrives="22:30">,
    #<UkBuses::Bus:0x007f8fe38ac710 @route_number="38", @destination="Heath, Childrens Unit", @arrives="22:45">]

**That's it.**

## Is this ok?

I don't know. This was a weekend hack project; there's no intention here to commercialise anything or commit any crime. This data is available in the **public domain**, on publically accessible websites, this gem just displays the data in a more geek-friendly format. But I'm aware that some companies aren't too keen on this.
Use of the MIT licence implies that you use this gem at your own risk.

My views mirror that of ScraperWiki:

*It is our view that, where a web server responds to an unauthenticated HTTP request, there is an implied licence to use the HTML that is returned for reading and automatically extracting that information. This, in our view, is how the web is designed to operate. If the proprietor of a web host wishes (for example) to charge for use of their site, HTTP provides mechanisms to require payment or authentication for use. They may also make use of the robots exclusion protocol to prevent scraping and spidering of any kind.
Of course we may be wrong about this. The question has not been tested in any UK court and, we understand, there is not much more clarity world-wide. If you are in doubt about whether what you are doing is lawful, you should seek your own legal advice, rather than relying on our best guess.*

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
