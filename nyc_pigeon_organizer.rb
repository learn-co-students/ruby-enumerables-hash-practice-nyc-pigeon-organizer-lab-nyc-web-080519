def nyc_pigeon_organizer(data)
  #build skeleton bird_hash by name
  
  new_bird_hash = {}
  all_birds = data[:gender][:male] + data[:gender][:female]
  all_birds.each do |bird|
    bird_hash = {
      bird => {
        :color => [],
        :gender => [],
        :lives => []
      }
    }
    new_bird_hash.merge!(bird_hash)
  end
  
  new_bird_hash.each_pair do |bird_key, bird_value|
    bird_value.each_key do |bird_sub_key|
      data[bird_sub_key].each_pair do |data_key, data_value|
        if data_value.include?(bird_key)
          new_bird_hash[bird_key][bird_sub_key] << data_key.to_s
        end
      end
    end
  end
  return new_bird_hash
end
