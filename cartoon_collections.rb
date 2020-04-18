def square_array(array)
  array.map do |element|
    element * element
  end
end



###could not get capitalize to work no matter which way I wrote it 
#def summon_captain_planet(planeteer_calls)
#  planeteer_calls.map do |item1|
#   item1.concat("!")
#   item1.capitalize
#   item1.concat("!").capitalize
#   item1.capitalize.concat("!")
#  end
#  planeteer_calls
#end
def summon_captain_planet(planeteer_calls)
  newArray = []
  i = 0
  while i < planeteer_calls.length do
   newArray.push(planeteer_calls[i].concat("!").capitalize)  
  i += 1
  end
  newArray
end



def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? do |element|
    element.length > 4
  end
end



def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  answer = nil
  i = 0
  while i < planeteer_calls.length do
    count = 0
    while count < valid_calls.length do
      if (valid_calls[count] == planeteer_calls[i])
      answer = count
      break
      else
        count += 1
      end
    end
      if answer == nil 
      i += 1
      else
        break
      end
  end
  if answer == nil
    nil
  else  
    valid_calls[answer]
  end
end


