include ActionView::Helpers::TextHelper

class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def average_rating
    scores = ratings.map{|rating| rating.score}
    average = scores.reduce(:+).to_f / scores.size
    "Has #{pluralize(ratings.count, 'rating')}, average #{average}"
  end

  def to_s
    "#{self.brewery.name}: #{self.name}"
  end
end