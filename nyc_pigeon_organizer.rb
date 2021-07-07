def nyc_pigeon_organizer(data)
  names_arr = []
  data.each do |key, value|
      value.each do |key2, value2|
          value2.each do |name|
              names_arr << name
          end
      end
  end
  names_arr = names_arr.uniq
  
  names_hash = Hash.new
  names_arr.each do |name|
      names_hash[name] = {:color => [],
                          :gender => [],
                          :lives => []
                        }
  end
  
  data.each do |key, value|
    names_arr.each do |name|
      value.each do |key1, value1|
        if value1.include?(name)
          names_hash[name][key] << key1.to_s
        end
      end
    end
  end
  names_hash
end
