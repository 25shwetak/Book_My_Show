class AddCostToSeat < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :cost, :integer
  end
end
