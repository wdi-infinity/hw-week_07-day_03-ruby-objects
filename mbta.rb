# Your solution here
  Red_line => ["South Station","Park Street","Kendal","Central","Harvard","Porter","Davis","Alewife"],
  Green_line =>["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmove"],
  Orange_line =>["North Station","Haymarket","park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]

  class Subway
   attr_accessor:lines;
   attr_accessor:movei;

  def initialize(line,station_way,movei)
  @line=line;
  @station=station_way;
  @movei=0;
  end

  def stops_between_stations(start_line, start_station, end_line, end_station)
      let count=0;
      let point = [];
      if start_line.index[point] <= end_line.index[point]
    for i in start_line do 
        count += 1;
  end
  puts count;
end

# One line, all the stations on that line
class Line < Subway
  attr_reader :stations
  attr_reader :name

  def initialize(name, stations)
  end
end

class Station <Subway
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

def travel
  @movei=@movei+1;
end 

#Tell the user the number of stops between stations AND the stops IN ORDER that they will pass through or change at.
mbta = Subway.new('Red', 'South Station',"Park Street", 'Green', 'Kenmore') 
mbta.movei
mbta.movei
mbta.movei

"Your trip continues through the following stops on Green Line:" 

# "Boylston, Arlington, Copley, Hines, and Kenmore."
# "7 stops in total.
mbta.["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmove"]

