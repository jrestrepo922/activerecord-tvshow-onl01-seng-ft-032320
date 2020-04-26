require 'pry'
class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)

  end

  def most_popular_show
     .where("rating = ?", highest_rating)
  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    Show.where("rating = ?", lowest_rating)
  end
end
