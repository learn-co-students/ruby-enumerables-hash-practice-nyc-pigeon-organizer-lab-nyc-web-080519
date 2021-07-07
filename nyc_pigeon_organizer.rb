require "pry"
def nyc_pigeon_organizer(data)
new_hash = {}
data.each {|key,value|
  value.each {|secondary_value, names|
    names.each {|name|
  if !new_hash[name]
    new_hash[name] = {}
  end
  if !new_hash[name][key]
    new_hash[name][key] = []
  end
    new_hash[name][key].push(secondary_value.to_s)
    }
  }
}
return new_hash
end
