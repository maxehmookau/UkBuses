# UKBuses

Grab *real-time* bus information across the entire United Kingdom.

## Installation

Add this line to your application's Gemfile:

    gem 'uk_buses'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uk_buses

## Usage

Using UKBuses couldn't be simpler. 

Firstly, require it at the top of your file:

    require 'uk_buses'

Create a `Query` object containing the bus stop code. This is normally the code written on bus stops that you text to a number to get real-time updates. They usually begin with a 2 letter code that represents your area, `cd` for Cardiff, `bn` for Brighton & Hove etc.

    q = UkBuses::Query.new('cdijtgm')

Then execute the query to scrape the data:
**This can take a little while!**
    
    results = q.run

`run` will return an array of `UkBuses::Bus` objects. 

That's it!


This is a 0.0.1 release currently so Pull Requests are greatfully received.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
