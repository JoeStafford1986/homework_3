stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

#excercise methods
def add_to_end(station_name, station_array)
  station_array.push(station_name)
  p station_array
end

def add_to_start(station_name, station_array)
  station_array.unshift(station_name)
  p station_array
end

def add_at_position(station_name, position, station_array)
  station_array.insert(position, station_name)
  p station_array
end

def find_position(station_name, station_array)
  index = station_array.index(station_name)
  p index
end

def remove_station_by_name(station_name, station_array)
  for station in station_array
    if station == station_name
      station_array.delete(station_name)
      p station_array
    end
  end
end

def remove_station_by_position(index, station_array)
  station_array.delete_at(index)
  p station_array
end

def count_stops(station_array)
  stops_count = station_array.count
  p stops_count
end

def multiple_returns(station_name, index, station_array)
  returns = []
  a_return = station_array.fetch(index)
  returns.push(a_return)
  a_return = station_array[index]
  returns.push(a_return)
  for station in station_array
    if station == station_name
      returns.push(station)
    end
  end
  p returns.count
end

def reverse_stops(station_array)
  station_array.reverse!
  p station_array
end

def print_stops_as_loop(station_array)
  for station in station_array
    p station
  end
end

#--------------------------------------------
#invoke methods
add_to_end("Edinburgh Waverley", stops)
add_to_start("Glasgow Queen St", stops)
add_at_position("Polmont", 4, stops)
find_position("Linlithgow", stops)
remove_station_by_name("Livingston", stops)
remove_station_by_position(2, stops)
count_stops(stops)
multiple_returns("Falkirk High", 2, stops)
reverse_stops(stops)
print_stops_as_loop(stops)
