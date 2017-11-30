class AddBookingmessageToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :bookingmessage, :text
  end
end
