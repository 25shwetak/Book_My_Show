class CreateScreens < ActiveRecord::Migration[5.2]
  def change
    create_table :screens do |t|
      t.integer :screen_number
      t.integer :capacity

      t.timestamps
    end
  end
end
