class Brewery < ActiveRecord::Base
  include ActionView::Helpers::TextHelper
  include RatingAverage

  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers
end
