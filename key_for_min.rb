# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    counter_key = nil
    counter_value = nil
    name_hash.each do |key, value|
      if counter_value == nil || value < counter_value
        counter_value = value
        counter_key = key
      end
    end
  counter_key

end
