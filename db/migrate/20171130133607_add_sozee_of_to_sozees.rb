class AddSozeeOfToSozees < ActiveRecord::Migration[5.1]
  def change
    add_column :sozees, :sozee_of, :string
  end
end
