class Player < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 20, minimum: 4 }
  validates :last_name, presence: true, length: { maximum: 20, minimum: 4 }
  validates :position, presence: true 
  validates :points_per_game, presence: true

  include RankedModel
  ranks :row_order
end
