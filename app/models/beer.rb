class Beer < ApplicationRecord
  include ActionView::Helpers::TextHelper
  include RatingAverage

  belongs_to :brewery
  has_many :ratings, dependent: :destroy

  def to_s
    "#{self.brewery.name}: #{self.name}"
  end
end