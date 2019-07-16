def nyc_pigeon_organizer(data)
  pigeon_names = []
  pigeon_list = {}
  data.each{ |attribute, attribute_hash|
    attribute_hash.each{ |value, arr|
      arr.each{ |name|
      if !pigeon_names.include?(name)
        pigeon_names.push(name)
      end
      }
    }
  }
  pigeon_names.each{ |piggy_name|
    pigeon_list[piggy_name] = Hash.new{ |a, b| a[b] = [] }
    data.each{ |attribute, attribute_hash|
      pigeon_list[piggy_name][attribute]
      attribute_hash.each { |value, arr|
        arr.each{ |name|
        if piggy_name == name 
          pigeon_list[piggy_name][attribute].push(value.to_s)
        end
        }
      }
    }
  }
pigeon_list  
end
