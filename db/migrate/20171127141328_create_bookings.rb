class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :location
      t.string :starts_at
      t.string :ends_at
      t.string :status
      t.references :user, foreign_key: true
      t.references :sozee, foreign_key: true

      t.timestamps
    end
  end
end
