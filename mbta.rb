# Your solution here
$lines = {
    'Red' => ['South Station', 'Park Street','Kendall','Central','Harvard','Harvard','Davis','Alewife'],
    'Greeen' => ['Government Center','Park Street','Boylston','Arlington','Copley','Hynes', 'Kenmore'],
    'Orange' => ['North Station', 'Haymarket','Park Street','State','Downtown Crossing','Chinatown','Back Bay','Forest Hills']
}
class Subway
    
    def initialize(lineRed, lineGreen, lineOrange)
        @lineRed = lineRed
        @lineGreen = lineGreen
        @lineOrange = lineOrange
    end
  
    def stops_between_stations(start_line, start_station, end_line, end_station)
        # create if def to count the stops between stations and lines if the start line is the same for 
    #  line 
    #  also we need another if conditions for diffrent lines , 

    end
  end
  
  class Line
    attr_reader :stations
    attr_reader :name

    # for the same line to count the stations , we can use (-) between the stations ,
    #  and show for the user the stations that will use it
  
    def initialize(name, stations)
    end
  end
  
  class Station
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end