# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    lowest_key_store = nil
    lowest_value_store = nil
    name_hash.each do |key, value|
        if lowest_value_store == nil || value < lowest_value_store
            lowest_value_store = value
            lowest_key_store = key
        end
    end
    lowest_key_store
end

# compare the first two values, see which one is smaller, then compare to the next one and see which is smaller