class ChangeDescriptionFormatInSozees < ActiveRecord::Migration[5.1]
  def change
    change_column :sozees, :description, :text
  end
end
