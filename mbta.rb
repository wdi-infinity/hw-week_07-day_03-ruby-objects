 lines[
 {red =[ 'South Station','Park Street', 'Kendall','Central','Harvard', 'Porter', 'Davis', 'Alewife']},
{green = ['Government Center','Park Street','Boylston','Arlington','Copley','Hynes','Kenmore']},
{orange =['North Station','Haymarket','Park Street','State','Downtown Crossing','Chinatown','Back Bay','Forest Hills']}
]

class Station(station)
    @station=station
end
class Subway
  attr_reader :lines

  def initialize(lines)
    @lines=lines
  end

  def stops_between_stations(start_line, start_station, end_line, end_station)
    puts("#{start_line} , #{start_station}, #{end_line},#{end_station}")
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

@mbta = Subway.new
@mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
@mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
@mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
