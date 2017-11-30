class AddLongitudeAndLatitudeToSozees < ActiveRecord::Migration[5.1]
  def change
    add_column :sozees, :address, :string
  end
end
