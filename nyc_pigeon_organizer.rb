def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  data.keys.each do |item|
    puts item
  end
  pigeons
end


#  data.each do |name, info|
#    info.each do |innerName, innerInfo|
#      innerInfo.each do |bird|
#        if !pigeons[bird]
#          pigeons[bird] = {:color => [], :gender => [], :lives => []}
#        end
#      end
#    end
#  end
#  pigeons
#end
