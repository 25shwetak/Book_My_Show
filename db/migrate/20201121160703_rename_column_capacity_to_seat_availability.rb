class RenameColumnCapacityToSeatAvailability < ActiveRecord::Migration[5.2]
  def change
    rename_column :screens, :capacity, :seat_availability
  end
end
