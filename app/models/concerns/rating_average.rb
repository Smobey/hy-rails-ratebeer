module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    scores = ratings.map(&:rating)
    average = scores.reduce(:+).to_f / scores.size
    "Has #{pluralize(ratings.count, 'rating')}, average #{average}"
  end
end
