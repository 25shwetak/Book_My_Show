class ChangeColumnTypeDateToString < ActiveRecord::Migration[5.2]
  def change
    change_column :shows, :date, :string
  end
end
