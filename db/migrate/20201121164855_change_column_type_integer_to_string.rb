class ChangeColumnTypeIntegerToString < ActiveRecord::Migration[5.2]
  def change
    change_column :seats, :seat_number, :string
  end
end
