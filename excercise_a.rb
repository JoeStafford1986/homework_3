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

def add_at_position(station_name, position, array)
  array.insert(position, station_name)
  p array
end






#--------------------------------------------
#invoke methods
add_to_end("Edinburgh Waverley", stops)
add_to_start("Glasgow Queen St", stops)
add_at_position("Polmont", 4, stops)
