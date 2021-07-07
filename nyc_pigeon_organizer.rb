def nyc_pigeon_organizer(data)
  result = {}

  color = data[:color]
  gender = data[:gender]
  lives = data[:lives]
  gender.each do |k, v|
    v.each do |name|
      result[name] = {:color => [],
      :gender => [],
      :lives => []
      }
    end
  end
  
  data.each do |key, info|
    info.each do |value, names|
      names.each do |name|
        result[name][key].push(value.to_s)
      end
    end
  end
  
  return result
end 