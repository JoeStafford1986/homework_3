stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

#excercise methods
def add_to_start(station_name, station_array)
  station_array.unshift(station_name)
  p station_array
end






#--------------------------------------------
#invoke methods
add_to_start("Edinburgh Waverley", stops)
