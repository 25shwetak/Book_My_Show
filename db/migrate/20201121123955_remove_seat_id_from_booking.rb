class RemoveSeatIdFromBooking < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :seat, index: true, foreign_key: true
  end
end
