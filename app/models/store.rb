class Store < ApplicationRecord
  has_many :line_items
  accepts_nested_attributes_for :line_items, allow_destroy: true

  def to_param
    slug
  end

end
