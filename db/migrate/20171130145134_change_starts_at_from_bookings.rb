class ChangeStartsAtFromBookings < ActiveRecord::Migration[5.1]
  def change
    rename_column :bookings, :starts_at, :day
  end
end
