# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
ikea = {:chair => 25, :table => 85, :mattress => 450}
def key_for_min_value(name_hash)
  if name_hash == {}
    nil
  else
    keys = []
    values = []
    name_hash.each do |key, value|
    keys << key
    values << value
    end
  #key_array = 0
  min = 0
  i = 0 
  until i == values.length-1 
    if min == 0 && values[i] < values[i+1]
    min = values[i]
    #key_array = i
    elsif min == 0 && values[i] > values[i+1]
    min = values[i+1]
    #key_array = i + 1
    elsif min != 0 && values[i] < values[i+1] && values[i] < min
    min = values[i]
    #key_array = i
    elsif min != 0 && values[i] > values[i+1] && values[i+1] < min
    min = values[i+1]
    #key_array = i + 1
    end
  i += 1
  end
    #puts "Here is the min #{min}"
    #puts "Here is the key array #{key_array}"
    name_hash.each do |key, value| 
      if value == min 
        return key 
      end
    end
  end
end

key_for_min_value(ikea)
  


