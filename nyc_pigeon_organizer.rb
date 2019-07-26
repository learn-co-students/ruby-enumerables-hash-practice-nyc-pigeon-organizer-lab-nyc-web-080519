def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  data.each do |attribute, info|
    info.each do |char, birds|
      birds.each do |name|
        #adds bird name key to new hash if it doesn't already exist
        if !pigeons[name]
          #each bird name key has a hash value that includes color, gender, lives
          pigeons[name] = {:color => [], :gender => [], :lives => []}
        end
        #adds character (ex: purple, male, etc) as a sting attribute value array
        pigeons[name][attribute].push(char.to_s)
      end
    end
  end
  pigeons
end
