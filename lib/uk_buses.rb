Dir[File.dirname(__FILE__) + '/uk_buses/*.rb'].each do |file|
  require file
  puts file.inspect
end

module UkBuses
  
end
