class AddEndTimeToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :end_time, :integer
  end
end
