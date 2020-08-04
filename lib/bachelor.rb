require 'pry'

#data is a hash, season is a string
#return first name of contestant winner for the season
def get_first_name_of_season_winner(data, season)
  winner = nil
  data.each do |season_hash, contestants_hashes|
    if season_hash == season
      contestants_hashes.each do |contestant|
        if contestant["status"] == "Winner"
          # binding.pry
          winner = contestant["name"].split
          winner = winner[0]
        end
      end
    end
  end
  return winner
  # binding.pry
end

#data = hash, occupation = string
#return contestants name matching occupation
def get_contestant_name(data, occupation)
  data.each do |season_number, contestants_hashes|
    contestants_hashes.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
    # binding.pry
  end
end


#data = hash, hometown = string
#return a counter of the number of contestants from the hometown string
def count_contestants_by_hometown(data, hometown)
  contestant["count"] = nil
  hometown_count = nil
  data.each do |season_number, contestants_hashes|
    contestants_hashes.each do |contestant|
      if contestant["hometown"] == hometown
        contestant[:count] += 1
        hometown_count = contestant[:count] 
      end
    end
  end
  return hometown_count
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
