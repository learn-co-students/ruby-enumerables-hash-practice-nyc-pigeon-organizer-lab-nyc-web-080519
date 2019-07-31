require 'pry'
def nyc_pigeon_organizer(data)
  new_pigeon_org = {}
  
  data.each do |key, value|
    value.each do |color, name|
      name.each do |pig_name|
        
        if !new_pigeon_org[pig_name]
          new_pigeon_org[pig_name] = {}
        end
        
        if !new_pigeon_org[pig_name][key]
          new_pigeon_org[pig_name][key] = []
        end
          new_pigeon_org[pig_name][key] << color.to_s
      end
    end
  end
  new_pigeon_org
end
