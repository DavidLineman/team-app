class AlterPlayersAddRowOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :row_order, :integer
    add_index :players, :row_order
  end
end
