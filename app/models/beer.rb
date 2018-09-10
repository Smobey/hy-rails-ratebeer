class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def average_rating
    scores = ratings.map{|rating| rating.score}
    average = scores.reduce(:+).to_f / scores.size
    "Has #{ratings.count} ratings, average #{average}"
  end
end