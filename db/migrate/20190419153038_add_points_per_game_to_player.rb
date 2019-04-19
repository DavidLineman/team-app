class AddPointsPerGameToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :points_per_game, :string
  end
end
