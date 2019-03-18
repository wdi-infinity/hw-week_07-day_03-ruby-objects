# Your solution here
class Subway
    attr_reader :lines
    def initialize(lines)
        @lines=lines
  end
    def stops_between_stations(start_line, start_station, end_line, end_station)
   lines = {
'Red'=>['South Station', "Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
'Green'=>["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
'Orange'=>["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}
intersect="Park Street"
start_stop=lines[start_line].index(start_station)
end_stop=lines[end_line].index(end_station)
    if start_line == end_line 
    return (start_stop - end_stop).abs
    # count+=1
    else 
    return ((start_stop - lines[start_line].index(intersect)).abs) +((end_stop - lines[end_line].index(intersect)).abs)
end
    end
end
  
# One line, all the stations on that line
class Line
    attr_reader :stations
  attr_reader :name

  def initialize(name, stations)
    @name=name
    @stations=stations
  end

end

# One station
class Station
    attr_reader :name
  def initialize(name)
    @name = name
  end

end
subway_stops=Subway.new 'Red', 'South Station' ,'Red','Park Street'