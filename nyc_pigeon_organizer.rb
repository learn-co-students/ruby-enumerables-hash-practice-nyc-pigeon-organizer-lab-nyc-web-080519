def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |keys, value|
    value.each do |trait, name|
      name.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][keys] ||= []
        pigeon_list[name][keys] << trait.to_s 
    end
  end
end
pigeon_list
  
end
