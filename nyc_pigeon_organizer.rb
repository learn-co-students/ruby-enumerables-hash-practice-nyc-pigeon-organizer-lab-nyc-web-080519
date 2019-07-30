def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |key,value|
    value.each do |property,names|
      names.each do |pigeon_name|
        pigeon = pigeon_list[pigeon_name]
        if !pigeon
          pigeon = Hash.new
          pigeon_list[pigeon_name] = pigeon
        end
        property_values = pigeon[key]
        if !property_values
          property_values = Array.new
          pigeon[key] = property_values
        end
        property_values.push(property.to_s)
      end
    end
  end
  return pigeon_list
end
