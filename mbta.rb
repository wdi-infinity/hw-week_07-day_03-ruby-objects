# Your solution here
class Subway
    attr_accessor :mbta
    attr_reader :line
    attr_reader :station
    attr_reader :start_line
    attr_reader :start_station
    attr_reader :end_line
    attr_reader :end_station
    
    def initialize

    @Red = ['South Station', 'Park Street', 'Kendall',
	            'Central', 'Harvard', 'Porter', 'Davis', 'Alewife']
	@Green = ['Government Center', 'Park Street', 'Boylston', 'Arlington',
	            'Copley', 'Hynes', 'Kenmore']
	@Orange = ['North Station', 'Haymarket', 'Park Street', 'State',
                 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
                 
    end

    def stops_between_stations(start_line, start_station, end_line, end_station)
        @start_line = start_line
	    @start_station = start_station
	    @end_line = end_line
	    @end_station = end_station
    end
end
  
# One line, all the stations on that line
class Line
    def initialize(line)
        @line = line
      end
end

# One station
class Station
    def initialize(station)
        @station = station
      end
end

stops =Subway.new 
stops.stops_between_stations("Red", "Alewife", "Red", "Alewife")
puts stops.stops_between_stations