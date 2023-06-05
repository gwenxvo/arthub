class CreateArtpieces < ActiveRecord::Migration[7.0]
  def change
    create_table :artpieces do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.integer :day_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
