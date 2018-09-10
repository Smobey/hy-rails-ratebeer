module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    scores = ratings.map{|rating| rating.score}
    average = scores.reduce(:+).to_f / scores.size
    "Has #{pluralize(ratings.count, 'rating')}, average #{average}"
  end
end