# Your solution here
class Subway
    attr_reader :lines
    Red_line = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
    Green_line = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
    Orange_line = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
  def initialize (station,line_name)
    @station = station
    @line_name = line_name
  end
end

def stops_between_stations(start_line, start_station, end_line, end_station)
    count=0
    start_s = start_line.index(start_stop)
    end_s = end_line.index(end_stop)
    if start_s <= end_s
    for i in start_s...end_s do
        count=count+1
        # puts line1[i]
        # puts line2[i]
    end
        puts count 
    
    else
    
        for i in end_s...start_s do
            count=count+1
            # puts line1[i]
            # puts line2[i]
          end
            puts count
            
        end
    end
end
  
# One line, all the stations on that line
class Line < Subway
  attr_reader :stations
  attr_reader :name

  def initialize(name, stations)
  end
end

# One station
class Station < Subway
  attr_reader :name
  def initialize(name)
    @name = name
  end
end