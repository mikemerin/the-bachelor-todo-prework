def get_first_name_of_season_winner(data, s)
   data.each do |season, info|
      info.each do |x|
         return x["name"].split[0] if x["status"] == "Winner" && s == season.to_s
      end
   end
   return "There was no winner for this season."
end

def get_contestant_name(data, occupation)
   data.each do |season, info|
      info.each do |x|
         return x["name"] if x["occupation"] == occupation
      end
   end
   return "There is no person with this occupation."
end

def count_contestants_by_hometown(data, hometown)
   counter = 0
   data.each do |season, info|
      info.each do |x|
         counter += 1 if x["hometown"] == hometown
      end
   end
   counter
end

def get_occupation(data, hometown)
   data.each do |season, info|
      info.each do |x|
         return x["occupation"] if x["hometown"] == hometown
      end
   end
end

def get_average_age_for_season(data, season)
   a = []
   data[season].each do |x|
      a << x["age"].to_i
   end
   a.reduce(:+).fdiv(a.size).round
end
