class LineItem < ApplicationRecord
  belongs_to :store, optional: true
end
