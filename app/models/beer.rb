class Beer < ApplicationRecord
  include ActionView::Helpers::TextHelper
  include RatingAverage

  belongs_to :brewery
  has_many :ratings, dependent: :destroy

  def average
    if ratings.count.zero?
      return 0
    end

    ratings.map(&:score).sum / ratings.count.to_f
  end

  def to_s
    "#{brewery.name}: #{name}"
  end
end
