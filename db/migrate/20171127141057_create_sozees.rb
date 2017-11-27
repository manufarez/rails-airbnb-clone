class CreateSozees < ActiveRecord::Migration[5.1]
  def change
    create_table :sozees do |t|
      t.string :sozee_name
      t.string :description
      t.string :category
      t.integer :price_per_hour
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
