module UkBuses
  class Bus

    attr_accessor :route_number, :destination, :arrives

    def initialize(route_number = nil, destination = nil, arrives = nil)
      @route_number = route_number
      @destination = destination
      @arrives = arrives
    end

  end
end