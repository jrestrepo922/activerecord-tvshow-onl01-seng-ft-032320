class Show < ActiveRecord::Base

end


def highest_rating
  Show.maximum(:rating)
end

def most_popular_show
   Show.where("rating = ?", highest_rating)
 end

def lowest_rating
  Show.minimum(:rating)
end

def least_popular_show
  Show.where("rating = ?", lowest_rating)
end 
