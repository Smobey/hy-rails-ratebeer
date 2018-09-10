class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def average_rating
    total = 0
    ratings.each do |rating|
      total += rating.score
    end
    average = total / ratings.count
    "Has #{ratings.count} ratings, average #{average}"
  end
end