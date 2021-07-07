def nyc_pigeon_organizer(data)
  final_hash = { }
  
  #STEP 1: populate final_hash with key: name / value: color, gender, lives
  
  data.each do |data_type, details_hash|
    details_hash.each do |category, info_arr|
      info_arr.each do |name|
        final_hash[name] = { :color => [], :gender => [], :lives=> []}
      end
    end
  end
  
  #STEP 2: associate the correct color, gender, lives
  
  birds = final_hash.keys
  
  data[:color].each do |color, names|
    names.each do |bird_name|
      birds.each do |bird|
        final_hash[bird][:color] << color.to_s if bird_name == bird
      end
    end
  end
  
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      birds.each do |item|
        if bird_name === item
          final_hash[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  
  data[:lives].each do |location, name|
    name.each do |bird_name|
      birds.each do |item|
        if bird_name === item
          final_hash[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return final_hash
end
