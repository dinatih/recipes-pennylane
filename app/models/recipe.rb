# frozen_string_literal: true

class Recipe < ApplicationRecord
  include PgSearch::Model

  has_one_attached :image

  validates :name, :ingredients, presence: true

  pg_search_scope :search_by_ingredients,
                  against: :ingredients,
                  using: { tsearch: { highlight: { StartSel: '<b>', StopSel: '</b>', HighlightAll: true } } }
end
