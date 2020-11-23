class AddShowSeatIdToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :show, foreign_key: true
    add_reference :bookings, :seat, foreign_key: true
  end
end
