class AddBookingIdtoSeat < ActiveRecord::Migration[5.2]
  def change
    add_reference :seats, :booking, foreign_key: true
  end
end
