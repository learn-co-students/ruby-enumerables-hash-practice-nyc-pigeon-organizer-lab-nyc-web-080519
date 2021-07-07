def nyc_pigeon_organizer(data)
  answer = Hash.new()
  data.each do |k, v|
     v.each do |attr_v, names|
       names.each do |n|
         if !answer[n]
           answer[n] = Hash.new()
         end
         if !answer[n][k]
            answer[n][k] = Array.new()
        end
        answer[n][k] << attr_v.to_s
      end 
    end
  end
  answer
end