require "pry"
pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }

def nyc_pigeon_organizer(data)
  new_keys = []
  new_hash = {}
  data.each do | attr_key, attr_data |
    attr_data.each do | trait_key, name_val |
      new_keys << name_val
    end  
  end
  new_keys = new_keys.flatten.uniq
    # from original hash iterate to crate new attr key array
    data.each do | attr_key, attr_data |
    # attr_key is the color, gender, lives
    # attr_data is purple, grey, male, City Hall
    attr_data.each do | trait_key, name_val |
      new_keys << name_val
      end  
    end
    new_keys = new_keys.flatten.uniq
    data.each do | attr_key, attr_data |
      new_keys.each do | item |
        if attr_key == :color
       new_hash[item] = {:color => ""}  
      trait_key_arr = []
     attr_data.each do | trait_key, name_val |
     name_val.each do | name |
     if name == "#{item}"
     trait_key_arr << trait_key
     new_hash[name] = {attr_key => "#{trait_key_arr}"}
     end
     end
     end
     end
     end
     end
     new_hash
     end 
nyc_pigeon_organizer(pigeon_data)