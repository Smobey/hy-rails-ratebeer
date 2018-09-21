class User < ApplicationRecord
  include ActionView::Helpers::TextHelper
  include RatingAverage

  has_many :ratings

  def to_s
    "#{username}"
  end
end
