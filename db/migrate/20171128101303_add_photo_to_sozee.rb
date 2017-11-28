class AddPhotoToSozee < ActiveRecord::Migration[5.1]
  def change
    add_column :sozees, :photo, :string
  end
end
