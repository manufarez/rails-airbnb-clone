class AddCoordinatesToSozees < ActiveRecord::Migration[5.1]
  def change
    add_column :sozees, :latitude, :float
    add_column :sozees, :longitude, :float
  end
end
