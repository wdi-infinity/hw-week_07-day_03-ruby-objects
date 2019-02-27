# Your solution here
class Subway
    attr_accessor :lines
    attr_accessor :count_stops

    def initialize
        @count_stops=0
        @lines=[] # store all stations the user pass in it
        @start_line_stations=[] # store only stations for firs_line to print it*
        @end_line_stations=[]# store only stations for end_line to print it*
    end
    def stops_between_stations(start_line, start_station, end_line, end_station)
        # hash of array 
        subway_line= {
            Red:["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
            Green:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
            Orange:["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
            }
        # same station
        if start_station==end_station
            count_stops=0 

        elsif start_line == end_line # same line
            subway_line.map do |key,line|
                val_key=key.to_s
                if val_key == start_line # check if key and start line is same then I can execute the statements 
                  if line.index(start_station) < line.index(end_station) # to know how user will go forward or reverse line -->check index start_line less than index end_line
                     line[line.index(start_station)..line.index(end_station)].map do |station|
                       if station != end_station
                        @count_stops+=1 # add 1 
                        lines.push(station) # push sattion to store all stations the user pass in it 
                        @start_line_stations.push(station)
                       end
                     end
                     break 

                    else
                        # go reverse line 
                            # -->the range should start with end_station 
                        line[line.index(end_station)..line.index(start_station)].map do |station|
                            if station != start_station
                                @count_stops+=1
                                @start_line_stations.push(station)
                                lines.push(station)
                               end
                        end
                   end
                end
            end
            # start_line not equal end_line
        elsif start_line != end_line
            subway_line.map do |key,line|
                val_key=key.to_s # take the key 
                if val_key == start_line  #if key and start line is same
                    if line.index(start_station) < line.index("Park Street") # here there is intersection between lines
                        # start line will stop at intersection
                        line[line.index(start_station)..line.index("Park Street")].map do |station|
                            if station != "Park Street"
                             @count_stops+=1
                             lines.push(station)
                             @start_line_stations.push(station)# I want only the station in start_line
                             else
                                @start_line_stations.push("Park Street")
                              break  
                            end
                          end
                     else
                        # range start with the intersection ("Park Street")
                        line[line.index("Park Street")..line.index(start_station)].map do |station|
                            if station != start_station
                             @count_stops+=1
                             lines.push(station)
                             @start_line_stations.push(station)
                             else
                                @start_line_stations.unshift("Park Street") # add intersection at first of array 
                              break  
                            end
                          end
                    end
                elsif val_key == end_line #if key and end_line is same
                    if line.index(end_station) < line.index("Park Street")
                        line[line.index(end_station)..line.index("Park Street")].map do |station|
                            if station != "Park Street"
                             @count_stops+=1
                             lines.push(station)
                             @end_line_stations.push(station) #I want only the station in end_line for print
                             else
                                @end_line_stations.push(end_station) # add 
                              break   # exit
                            end
                          end
                     else
                        line[line.index("Park Street")..line.index(end_station)].map do |station|
                            if station != end_station
                             @count_stops+=1
                             lines.push(station)
                             @end_line_stations.push(station) #I want only the station in end_line for print
                             else
                                @end_line_stations.unshift(end_station)# add "Park Street"
                              break  # exit 
                            end
                          end
                    end
                end
            end
        end
        # print 
        puts "You must travel through the following stops on the #{start_line}:"
        @start_line_stations.map do |item| 
            print "#{item}, "
        end
        print "\n"
        if !@end_line_stations.empty?
          puts "Change at Park Street."
          puts "our trip continues through the following stops on #{end_line}: "
          @end_line_stations.map do |item| 
           print "#{item}, "
          end
        end
        print "\n"
        # puts lines # line
        puts "#{@count_stops} stops in total." # stops count

    end
end # end subway class

  # One line, all the stations on that line
class Line < Subway
  attr_reader :stations
  attr_reader :name

   def initialize(name, stations)
    @stations=lines # all stations on the line
    @name=name
   end
end

class Station < Line
        attr_reader :name
        def initialize(name)
          @name = name
        end
      end

subway_stops=Subway.new

#allow the user to input their start line, start station, end line, and end station.
puts "plz input your start line"
start_line=gets.chomp

puts "plz input your start station"
start_station=gets.chomp

puts "plz input your  end line"
end_line=gets.chomp

puts "plz input your end station"
end_station=gets.chomp

subway_stops.stops_between_stations(start_line,start_station,end_line,end_station)

# subway_stops.stops_between_stations('Red','South Station','Green','Arlington')
# subway_stops.stops_between_stations('Red','South Station','Red','Alewife')
