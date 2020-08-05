require 'pry'

# #data is a hash, season is a string
# #return first name of contestant winner for the season
# def get_first_name_of_season_winner(data, season)
#   winner = nil
#   data.each do |season_hash, contestants_hashes|
#     if season_hash == season
#       contestants_hashes.each do |contestant|
#         if contestant["status"] == "Winner"
#           # binding.pry
#           winner = contestant["name"].split
#           winner = winner[0]
#         end
#       end
#     end
#   end
#   return winner
#   # binding.pry
# end

#2nd attempt to write it shorter without using each as much

def get_first_name_of_season_winner(data, season)
  data[season].select do |contestant|
    contestant["status"] == "Winner"
    return contestant["name"].split[0]
  end
end


#data = hash, occupation = string
#return contestants name matching occupation
def get_contestant_name(data, occupation)
  person = nil
  data.each do |season_number, contestants_hashes|
    contestants_hashes.each do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
    # binding.pry
  end
  person
end


#data = hash, hometown = string
#return a counter of the number of contestants from the hometown string
def count_contestants_by_hometown(data, hometown)
  contestant_count = 0
  data.each do |season_number, contestants_hashes|
    contestants_hashes.each do |contestant|
      if contestant["hometown"] == hometown
        contestant_count += 1
      end
    end
  end
  return contestant_count
end

#data = hash, hometown = string
#return the occupation of the first person from hometown
def get_occupation(data, hometown)
  data.each do |season_number, contestants_hashes|
    contestants_hashes.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end


# #data = hash, season = string
# #return average age of the contestants
# def get_average_age_for_season(data, season)
#   average_age = 0
#   data.each do |season_number, contestants_hashes|
#     if season_number == season
#       #alternate data[season].each do |contestants| faster way for the future
#       contestants_hashes.each do |contestants|
#         average_age += contestants["age"].to_f
#       end
#       average_age = average_age / contestants_hashes.length
#       average_age = average_age.round
#       # binding.pry
#     end
#   end
#   average_age
# end

#2nd try for shorter verison without using each as much

def get_average_age_for_season(data, season)
  get_contestant_age = data[season].map do |contestants|
    contestants["age"].to_i
  end
  summed_ages = get_contestant_age.reduce(0) do |sum, age|
    sum += age
  end
  contestant_total = get_contestant_age.count.to_f
  average = (summed_ages / contestant_total).round
end

