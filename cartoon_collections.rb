#def square_array(array)
  # Use an Enumerable to square every element in the passed in array
  # Return a new array of the results
#end

#def summon_captain_planet(planeteer_calls)
  # Use an Enumerable to capitalize and add '!' to every element in the passed in array
  # Return a new array of the results
#end

#def long_planeteer_calls(planeteer_calls)
  # Use an Enumerable to check if any string in the passed in array is greater than 4 characters long
  # Return the boolean result of this check
#end

#def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found
#end


def square_array(array)
  array.map do |element|
    element * element
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map do |item1|
   item1.concat("!")
   item1.capitalize
   item1.concat("!").capitalize
  end
  planeteer_calls
end

#def summon_captain_planet(planeteer_calls)
#  newArray = []
#  i = 0
#  while i < planeteer_calls.length do
#   newArray.push(planeteer_calls[i].concat("!").capitalize)  
#  i += 1
#  end
#  newArray
#end





def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? do |element|
    element.length > 4
  end
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  planeteer_calls.detect
    planeteer_calls.include? valid_calls

end