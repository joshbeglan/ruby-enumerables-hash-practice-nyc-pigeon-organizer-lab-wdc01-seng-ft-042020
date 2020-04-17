def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |characteristic, value|
    value.each do |stats, all_names|
      all_names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][characteristic] == nil
          pigeon_list[name][characteristic] = []
        end
        pigeon_list[name][characteristic].push(stats.to_s)
      end
    end 
  end

  pigeon_list
end
