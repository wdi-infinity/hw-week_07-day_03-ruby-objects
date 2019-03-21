lines = {
red_line = ['South Station','Park Street','Kendall','Central','Harvard','Porter','Davis','Alewife'],
green_line = ['Government Center','Park Street','Boylston','Arlington','Copley','Hynes','Kenmore'],
orange_line = ['North Station','Haymarket','Park Street','State','Downtown Crossing','Chinatown''Back Bay','Forest Hills' ] 
}


  class Subway
    def stops_between_stations(start_line, start_station, end_line, end_station)
        if (start_line == end_line )
            return start_station - end_station
        else return  
        end 
    end
end

class Line
end

class Station
end


@mbta = Subway.new
@mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
@mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
@mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')