
# Your solution here
class Subway
    attr_reader :lines
    attr_accessor :count_number_of_steps

    def initialize(lines)
       @lines = lines
      end

    def stops_between_stations(start_line, start_station, end_line, end_station)
       
        from_index = red_staiton.index(start_station)
        to_index = red_staiton.index(end_station) 
        if from_index < to_index 
        for i in from_index...to_index
            count_number_of_steps+=1
        end
        else 
        for i in to_index...from_index
            count_number_of_steps+=1  
        end
        end
        puts "hi #{count_number_of_steps}" 
    end
    end

end
  
# One line, all the stations on that line
class Line < Subway 
  attr_reader :stations
  attr_reader :name

  def initialize(name, stations)
    @name = name
    @staions = staions
    end

end

# One station
class Station < Line 
    # I only need the staion name
    attr_reader :name
        def initialize(name)
          @name = name
        end
end

    red_staiton =  ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"]
    green_staion =["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"]



